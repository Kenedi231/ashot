// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'profile_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ProfileDTO _$_$_ProfileDTOFromJson(Map<String, dynamic> json) {
  return _$_ProfileDTO(
    name: json['name'] as String,
    email: json['email'] as String,
    adress: json['adress'] as String,
    phone: json['phone'] as String,
    avatar: json['avatar'] as String,
  );
}

Map<String, dynamic> _$_$_ProfileDTOToJson(_$_ProfileDTO instance) =>
    <String, dynamic>{
      'name': instance.name,
      'email': instance.email,
      'adress': instance.adress,
      'phone': instance.phone,
      'avatar': instance.avatar,
    };
