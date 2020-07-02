// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'review.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$ReviewTearOff {
  const _$ReviewTearOff();

  _Review call(
      {UniqueId id,
      UniqueId product_id,
      Rate rate,
      Comment comment,
      Profile user,
      Timestamp date}) {
    return _Review(
      id: id,
      product_id: product_id,
      rate: rate,
      comment: comment,
      user: user,
      date: date,
    );
  }
}

// ignore: unused_element
const $Review = _$ReviewTearOff();

mixin _$Review {
  UniqueId get id;
  UniqueId get product_id;
  Rate get rate;
  Comment get comment;
  Profile get user;
  Timestamp get date;

  $ReviewCopyWith<Review> get copyWith;
}

abstract class $ReviewCopyWith<$Res> {
  factory $ReviewCopyWith(Review value, $Res Function(Review) then) =
      _$ReviewCopyWithImpl<$Res>;
  $Res call(
      {UniqueId id,
      UniqueId product_id,
      Rate rate,
      Comment comment,
      Profile user,
      Timestamp date});

  $ProfileCopyWith<$Res> get user;
}

class _$ReviewCopyWithImpl<$Res> implements $ReviewCopyWith<$Res> {
  _$ReviewCopyWithImpl(this._value, this._then);

  final Review _value;
  // ignore: unused_field
  final $Res Function(Review) _then;

  @override
  $Res call({
    Object id = freezed,
    Object product_id = freezed,
    Object rate = freezed,
    Object comment = freezed,
    Object user = freezed,
    Object date = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as UniqueId,
      product_id:
          product_id == freezed ? _value.product_id : product_id as UniqueId,
      rate: rate == freezed ? _value.rate : rate as Rate,
      comment: comment == freezed ? _value.comment : comment as Comment,
      user: user == freezed ? _value.user : user as Profile,
      date: date == freezed ? _value.date : date as Timestamp,
    ));
  }

  @override
  $ProfileCopyWith<$Res> get user {
    if (_value.user == null) {
      return null;
    }
    return $ProfileCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value));
    });
  }
}

abstract class _$ReviewCopyWith<$Res> implements $ReviewCopyWith<$Res> {
  factory _$ReviewCopyWith(_Review value, $Res Function(_Review) then) =
      __$ReviewCopyWithImpl<$Res>;
  @override
  $Res call(
      {UniqueId id,
      UniqueId product_id,
      Rate rate,
      Comment comment,
      Profile user,
      Timestamp date});

  @override
  $ProfileCopyWith<$Res> get user;
}

class __$ReviewCopyWithImpl<$Res> extends _$ReviewCopyWithImpl<$Res>
    implements _$ReviewCopyWith<$Res> {
  __$ReviewCopyWithImpl(_Review _value, $Res Function(_Review) _then)
      : super(_value, (v) => _then(v as _Review));

  @override
  _Review get _value => super._value as _Review;

  @override
  $Res call({
    Object id = freezed,
    Object product_id = freezed,
    Object rate = freezed,
    Object comment = freezed,
    Object user = freezed,
    Object date = freezed,
  }) {
    return _then(_Review(
      id: id == freezed ? _value.id : id as UniqueId,
      product_id:
          product_id == freezed ? _value.product_id : product_id as UniqueId,
      rate: rate == freezed ? _value.rate : rate as Rate,
      comment: comment == freezed ? _value.comment : comment as Comment,
      user: user == freezed ? _value.user : user as Profile,
      date: date == freezed ? _value.date : date as Timestamp,
    ));
  }
}

class _$_Review with DiagnosticableTreeMixin implements _Review {
  const _$_Review(
      {this.id,
      this.product_id,
      this.rate,
      this.comment,
      this.user,
      this.date});

  @override
  final UniqueId id;
  @override
  final UniqueId product_id;
  @override
  final Rate rate;
  @override
  final Comment comment;
  @override
  final Profile user;
  @override
  final Timestamp date;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Review(id: $id, product_id: $product_id, rate: $rate, comment: $comment, user: $user, date: $date)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Review'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('product_id', product_id))
      ..add(DiagnosticsProperty('rate', rate))
      ..add(DiagnosticsProperty('comment', comment))
      ..add(DiagnosticsProperty('user', user))
      ..add(DiagnosticsProperty('date', date));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Review &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.product_id, product_id) ||
                const DeepCollectionEquality()
                    .equals(other.product_id, product_id)) &&
            (identical(other.rate, rate) ||
                const DeepCollectionEquality().equals(other.rate, rate)) &&
            (identical(other.comment, comment) ||
                const DeepCollectionEquality()
                    .equals(other.comment, comment)) &&
            (identical(other.user, user) ||
                const DeepCollectionEquality().equals(other.user, user)) &&
            (identical(other.date, date) ||
                const DeepCollectionEquality().equals(other.date, date)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(product_id) ^
      const DeepCollectionEquality().hash(rate) ^
      const DeepCollectionEquality().hash(comment) ^
      const DeepCollectionEquality().hash(user) ^
      const DeepCollectionEquality().hash(date);

  @override
  _$ReviewCopyWith<_Review> get copyWith =>
      __$ReviewCopyWithImpl<_Review>(this, _$identity);
}

abstract class _Review implements Review {
  const factory _Review(
      {UniqueId id,
      UniqueId product_id,
      Rate rate,
      Comment comment,
      Profile user,
      Timestamp date}) = _$_Review;

  @override
  UniqueId get id;
  @override
  UniqueId get product_id;
  @override
  Rate get rate;
  @override
  Comment get comment;
  @override
  Profile get user;
  @override
  Timestamp get date;
  @override
  _$ReviewCopyWith<_Review> get copyWith;
}
