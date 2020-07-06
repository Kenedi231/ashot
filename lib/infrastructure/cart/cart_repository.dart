import 'package:ashot/domain/auth/user.dart';
import 'package:ashot/infrastructure/cart/cart_dto.dart';

import '../core/firestore_helpers.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/services.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/collection.dart';

import '../../domain/cart/cart.dart';
import '../../domain/cart/cart_failure.dart';
import '../../domain/cart/cart_item.dart';
import '../../domain/cart/i_cart_repository.dart';
import '../../domain/catalog/product.dart';
import '../../domain/core/value_objects.dart';

@prod
@lazySingleton
@RegisterAs(ICartRepository)
class CartRepository implements ICartRepository {
  final Firestore _firestore;

  CartRepository(this._firestore);


  Cart cart = Cart.empty();
  
  @override
  Cart add(Product item) {
    final int existedElement = cart.items.indexOfFirst((el) => el.dish == item);
    KtList<CartItem> newList;
    if (existedElement == -1) {
      newList = cart.items.plusElement(CartItem(
        dish: item,
        count: Count(1),
      ));
    } else {
      final KtMutableList<CartItem> items = cart.items.toMutableList();
      items[existedElement] = CartItem(
        dish: items[existedElement].dish,
        count: items[existedElement].count.add(Count(1)),
      );
      newList = items;
    }

    final Price total = getTotal(newList);

    return cart = Cart(
      items: newList,
      total: total,
    );
  }
  
  @override
  Cart clear() => cart = Cart(
    items: KtList.empty(),
    total: Price(0),
  );

  @override
  Cart delete(CartItem item) {
    final KtList<CartItem> newList = cart.items.minusElement(item);
    final Price total = getTotal(newList);
    return cart = Cart(
      items: newList,
      total: total,
    );
  }

  @override
  Cart update(CartItem item, int deltaCount) {
    final int index = cart.items.indexOf(item);
    final KtMutableList<CartItem> list = cart.items.toMutableList();
    final Count newCount = item.count.add(Count(deltaCount)).getOrElse(1) < 1 ? Count(1) : item.count.add(Count(deltaCount));
    list[index] = CartItem(
      dish: list[index].dish,
      count: newCount,
    );
    final Price total = getTotal(list);
    
    return cart = Cart(
      items: list,
      total: total,
    );
  }

  @override
  Cart watchAll() => cart;

  Price getTotal(KtList<CartItem> items) {
    final int total = items.sumBy((item) => item.count.getOrElse(1) * item.dish.price.getOrCrash());

    return Price(total);
  }

  @override
  Future<Either<CartFailure, Unit>> toPay() async {
    final storyCollection = await _firestore.story();
    final User user = await _firestore.authentificatedUser();

    try {
      cart = cart.copyWith(
        userId: UniqueId.fromFirebaseId(user.id.getOrCrash()),
      );

      await storyCollection
        .add(CartDto.fromDomain(cart).toJson());

      return right(unit);
    } on PlatformException catch (e) {
      return left(const CartFailure.unexpected());
    }
  }
}
