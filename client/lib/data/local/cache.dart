import 'dart:convert';

import 'package:client/domain/entities/need_verify.dart';
import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

@injectable
class Cache {
  final SharedPreferences _prefs;

  Cache(this._prefs);

  static const String keyNeedVerify = 'need_verify';

  Future<void> putNeedVerify(NeedVerify? value) async {
    if (value == null) {
      await _prefs.remove(keyNeedVerify);
    } else {
      await _prefs.setString(keyNeedVerify, jsonEncode(value.toJson()));
    }
  }

  NeedVerify? needVerify() {
    final needVerifyString = _prefs.getString(keyNeedVerify);
    if (needVerifyString == null) {
      return null;
    }
    final needVerify = jsonDecode(needVerifyString);
    return NeedVerify.fromJson(needVerify);
  }

  Future<void> clear() async {
    await _prefs.clear();
  }
}
