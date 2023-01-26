import 'package:freezed_annotation/freezed_annotation.dart';

part 'need_verify.freezed.dart';
part 'need_verify.g.dart';

@freezed
class NeedVerify with _$NeedVerify {
  const factory NeedVerify({
    required String phoneNumber,
    @JsonKey(name: 'verification_id') required String verificationId,
    required int token,
  }) = _NeedVerify;

  factory NeedVerify.fromJson(Map<String, Object?> json) =>
      _$NeedVerifyFromJson(json);
}
