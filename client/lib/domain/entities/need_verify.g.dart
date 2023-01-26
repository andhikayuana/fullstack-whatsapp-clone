// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'need_verify.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_NeedVerify _$$_NeedVerifyFromJson(Map<String, dynamic> json) =>
    _$_NeedVerify(
      phoneNumber: json['phoneNumber'] as String,
      verificationId: json['verification_id'] as String,
      token: json['token'] as int,
    );

Map<String, dynamic> _$$_NeedVerifyToJson(_$_NeedVerify instance) =>
    <String, dynamic>{
      'phoneNumber': instance.phoneNumber,
      'verification_id': instance.verificationId,
      'token': instance.token,
    };
