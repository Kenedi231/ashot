// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'catalog_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
ProductDto _$ProductDtoFromJson(Map<String, dynamic> json) {
  return _CatalogDto.fromJson(json);
}

class _$ProductDtoTearOff {
  const _$ProductDtoTearOff();

  _CatalogDto call(
      {@JsonKey(ignore: true) String id,
      @required String name,
      @required String description,
      @required int price,
      @required String imageURL}) {
    return _CatalogDto(
      id: id,
      name: name,
      description: description,
      price: price,
      imageURL: imageURL,
    );
  }
}

// ignore: unused_element
const $ProductDto = _$ProductDtoTearOff();

mixin _$ProductDto {
  @JsonKey(ignore: true)
  String get id;
  String get name;
  String get description;
  int get price;
  String get imageURL;

  Map<String, dynamic> toJson();
  $ProductDtoCopyWith<ProductDto> get copyWith;
}

abstract class $ProductDtoCopyWith<$Res> {
  factory $ProductDtoCopyWith(
          ProductDto value, $Res Function(ProductDto) then) =
      _$ProductDtoCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(ignore: true) String id,
      String name,
      String description,
      int price,
      String imageURL});
}

class _$ProductDtoCopyWithImpl<$Res> implements $ProductDtoCopyWith<$Res> {
  _$ProductDtoCopyWithImpl(this._value, this._then);

  final ProductDto _value;
  // ignore: unused_field
  final $Res Function(ProductDto) _then;

  @override
  $Res call({
    Object id = freezed,
    Object name = freezed,
    Object description = freezed,
    Object price = freezed,
    Object imageURL = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as String,
      name: name == freezed ? _value.name : name as String,
      description:
          description == freezed ? _value.description : description as String,
      price: price == freezed ? _value.price : price as int,
      imageURL: imageURL == freezed ? _value.imageURL : imageURL as String,
    ));
  }
}

abstract class _$CatalogDtoCopyWith<$Res> implements $ProductDtoCopyWith<$Res> {
  factory _$CatalogDtoCopyWith(
          _CatalogDto value, $Res Function(_CatalogDto) then) =
      __$CatalogDtoCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(ignore: true) String id,
      String name,
      String description,
      int price,
      String imageURL});
}

class __$CatalogDtoCopyWithImpl<$Res> extends _$ProductDtoCopyWithImpl<$Res>
    implements _$CatalogDtoCopyWith<$Res> {
  __$CatalogDtoCopyWithImpl(
      _CatalogDto _value, $Res Function(_CatalogDto) _then)
      : super(_value, (v) => _then(v as _CatalogDto));

  @override
  _CatalogDto get _value => super._value as _CatalogDto;

  @override
  $Res call({
    Object id = freezed,
    Object name = freezed,
    Object description = freezed,
    Object price = freezed,
    Object imageURL = freezed,
  }) {
    return _then(_CatalogDto(
      id: id == freezed ? _value.id : id as String,
      name: name == freezed ? _value.name : name as String,
      description:
          description == freezed ? _value.description : description as String,
      price: price == freezed ? _value.price : price as int,
      imageURL: imageURL == freezed ? _value.imageURL : imageURL as String,
    ));
  }
}

@JsonSerializable()
class _$_CatalogDto implements _CatalogDto {
  _$_CatalogDto(
      {@JsonKey(ignore: true) this.id,
      @required this.name,
      @required this.description,
      @required this.price,
      @required this.imageURL})
      : assert(name != null),
        assert(description != null),
        assert(price != null),
        assert(imageURL != null);

  factory _$_CatalogDto.fromJson(Map<String, dynamic> json) =>
      _$_$_CatalogDtoFromJson(json);

  @override
  @JsonKey(ignore: true)
  final String id;
  @override
  final String name;
  @override
  final String description;
  @override
  final int price;
  @override
  final String imageURL;

  @override
  String toString() {
    return 'ProductDto(id: $id, name: $name, description: $description, price: $price, imageURL: $imageURL)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CatalogDto &&
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
  _$CatalogDtoCopyWith<_CatalogDto> get copyWith =>
      __$CatalogDtoCopyWithImpl<_CatalogDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_CatalogDtoToJson(this);
  }
}

abstract class _CatalogDto implements ProductDto {
  factory _CatalogDto(
      {@JsonKey(ignore: true) String id,
      @required String name,
      @required String description,
      @required int price,
      @required String imageURL}) = _$_CatalogDto;

  factory _CatalogDto.fromJson(Map<String, dynamic> json) =
      _$_CatalogDto.fromJson;

  @override
  @JsonKey(ignore: true)
  String get id;
  @override
  String get name;
  @override
  String get description;
  @override
  int get price;
  @override
  String get imageURL;
  @override
  _$CatalogDtoCopyWith<_CatalogDto> get copyWith;
}
