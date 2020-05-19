// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'product.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$ProductTearOff {
  const _$ProductTearOff();

  _Product call(
      {@required UniqueId id,
      @required StringSingleLine name,
      @required StringMultLine description,
      @required Price price,
      @required StringSingleLine imageURL}) {
    return _Product(
      id: id,
      name: name,
      description: description,
      price: price,
      imageURL: imageURL,
    );
  }
}

// ignore: unused_element
const $Product = _$ProductTearOff();

mixin _$Product {
  UniqueId get id;
  StringSingleLine get name;
  StringMultLine get description;
  Price get price;
  StringSingleLine get imageURL;

  $ProductCopyWith<Product> get copyWith;
}

abstract class $ProductCopyWith<$Res> {
  factory $ProductCopyWith(Product value, $Res Function(Product) then) =
      _$ProductCopyWithImpl<$Res>;
  $Res call(
      {UniqueId id,
      StringSingleLine name,
      StringMultLine description,
      Price price,
      StringSingleLine imageURL});
}

class _$ProductCopyWithImpl<$Res> implements $ProductCopyWith<$Res> {
  _$ProductCopyWithImpl(this._value, this._then);

  final Product _value;
  // ignore: unused_field
  final $Res Function(Product) _then;

  @override
  $Res call({
    Object id = freezed,
    Object name = freezed,
    Object description = freezed,
    Object price = freezed,
    Object imageURL = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as UniqueId,
      name: name == freezed ? _value.name : name as StringSingleLine,
      description: description == freezed
          ? _value.description
          : description as StringMultLine,
      price: price == freezed ? _value.price : price as Price,
      imageURL:
          imageURL == freezed ? _value.imageURL : imageURL as StringSingleLine,
    ));
  }
}

abstract class _$ProductCopyWith<$Res> implements $ProductCopyWith<$Res> {
  factory _$ProductCopyWith(_Product value, $Res Function(_Product) then) =
      __$ProductCopyWithImpl<$Res>;
  @override
  $Res call(
      {UniqueId id,
      StringSingleLine name,
      StringMultLine description,
      Price price,
      StringSingleLine imageURL});
}

class __$ProductCopyWithImpl<$Res> extends _$ProductCopyWithImpl<$Res>
    implements _$ProductCopyWith<$Res> {
  __$ProductCopyWithImpl(_Product _value, $Res Function(_Product) _then)
      : super(_value, (v) => _then(v as _Product));

  @override
  _Product get _value => super._value as _Product;

  @override
  $Res call({
    Object id = freezed,
    Object name = freezed,
    Object description = freezed,
    Object price = freezed,
    Object imageURL = freezed,
  }) {
    return _then(_Product(
      id: id == freezed ? _value.id : id as UniqueId,
      name: name == freezed ? _value.name : name as StringSingleLine,
      description: description == freezed
          ? _value.description
          : description as StringMultLine,
      price: price == freezed ? _value.price : price as Price,
      imageURL:
          imageURL == freezed ? _value.imageURL : imageURL as StringSingleLine,
    ));
  }
}

class _$_Product with DiagnosticableTreeMixin implements _Product {
  const _$_Product(
      {@required this.id,
      @required this.name,
      @required this.description,
      @required this.price,
      @required this.imageURL})
      : assert(id != null),
        assert(name != null),
        assert(description != null),
        assert(price != null),
        assert(imageURL != null);

  @override
  final UniqueId id;
  @override
  final StringSingleLine name;
  @override
  final StringMultLine description;
  @override
  final Price price;
  @override
  final StringSingleLine imageURL;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Product(id: $id, name: $name, description: $description, price: $price, imageURL: $imageURL)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Product'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('description', description))
      ..add(DiagnosticsProperty('price', price))
      ..add(DiagnosticsProperty('imageURL', imageURL));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Product &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)) &&
            (identical(other.price, price) ||
                const DeepCollectionEquality().equals(other.price, price)) &&
            (identical(other.imageURL, imageURL) ||
                const DeepCollectionEquality()
                    .equals(other.imageURL, imageURL)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(description) ^
      const DeepCollectionEquality().hash(price) ^
      const DeepCollectionEquality().hash(imageURL);

  @override
  _$ProductCopyWith<_Product> get copyWith =>
      __$ProductCopyWithImpl<_Product>(this, _$identity);
}

abstract class _Product implements Product {
  const factory _Product(
      {@required UniqueId id,
      @required StringSingleLine name,
      @required StringMultLine description,
      @required Price price,
      @required StringSingleLine imageURL}) = _$_Product;

  @override
  UniqueId get id;
  @override
  StringSingleLine get name;
  @override
  StringMultLine get description;
  @override
  Price get price;
  @override
  StringSingleLine get imageURL;
  @override
  _$ProductCopyWith<_Product> get copyWith;
}
