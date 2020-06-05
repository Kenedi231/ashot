import 'package:ashot/domain/profile/profile.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/core/value_objects.dart';
import '../core/firestore_helpers.dart';

part 'profile_dto.freezed.dart';
part 'profile_dto.g.dart';

@freezed
abstract class ProfileDTO with _$ProfileDTO {
  factory ProfileDTO({
    @JsonKey(ignore: true) String id,
    @required String name,
    @required String email,
    String address,
    String phone,
    String avatar,
  }) = _ProfileDTO;

  factory ProfileDTO.fromDomain(Profile user) {
    return ProfileDTO(
      id: user.id.getOrCrash(),
      name: user.name.getOrElse(''),
      email: user.emailAddress.getOrCrash(),
      address: user.address.getOrElse(''),
      phone: user.phone.getOrElse(''),
      avatar: user.avatar.getOrElse(''),
    );
  }

  factory ProfileDTO.fromJson(Map<String, dynamic> json) =>
      _$ProfileDTOFromJson(json);

  factory ProfileDTO.fromFirestore(DocumentSnapshot doc) {
    return ProfileDTO.fromJson(doc.data).copyWith(id: doc.documentID);
  }
}

extension ProfileDTOX on ProfileDTO {
  Profile toDomain() {
    return Profile(
      id: UniqueId.fromUniqueString(id),
      emailAddress: EmailAddress(email),
      name: StringSingleLine(name),
      address: Address(address ?? ''),
      phone: Phone(phone ?? ''),
      avatar: URL(avatar),
    );
  }
}
