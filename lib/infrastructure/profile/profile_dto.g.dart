// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'profile_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ProfileDTO _$_$_ProfileDTOFromJson(Map<String, dynamic> json) {
  return _$_ProfileDTO(
    id: json['id'] as String,
    name: json['name'] as String,
    email: json['email'] as String,
    address: json['address'] as String,
    phone: json['phone'] as String,
    avatar: json['avatar'] as String,
  );
}

Map<String, dynamic> _$_$_ProfileDTOToJson(_$_ProfileDTO instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'email': instance.email,
      'address': instance.address,
      'phone': instance.phone,
      'avatar': instance.avatar,
    };
