/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports
// ignore_for_file: use_super_parameters
// ignore_for_file: type_literal_in_constant_pattern

library protocol; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:serverpod_client/serverpod_client.dart' as _i1;
import 'example.dart' as _i2;
import 'post.dart' as _i3;
import 'post_audience_setting.dart' as _i4;
import 'post_reply_setting.dart' as _i5;
import 'post_type.dart' as _i6;
import 'user.dart' as _i7;
import 'package:xclone_client/src/protocol/post.dart' as _i8;
import 'package:serverpod_auth_client/module.dart' as _i9;
export 'example.dart';
export 'post.dart';
export 'post_audience_setting.dart';
export 'post_reply_setting.dart';
export 'post_type.dart';
export 'user.dart';
export 'client.dart';

class Protocol extends _i1.SerializationManager {
  Protocol._();

  factory Protocol() => _instance;

  static final Map<Type, _i1.constructor> customConstructors = {};

  static final Protocol _instance = Protocol._();

  @override
  T deserialize<T>(
    dynamic data, [
    Type? t,
  ]) {
    t ??= T;
    if (customConstructors.containsKey(t)) {
      return customConstructors[t]!(data, this) as T;
    }
    if (t == _i2.Example) {
      return _i2.Example.fromJson(data, this) as T;
    }
    if (t == _i3.Post) {
      return _i3.Post.fromJson(data, this) as T;
    }
    if (t == _i4.PostAudienceSettings) {
      return _i4.PostAudienceSettings.fromJson(data) as T;
    }
    if (t == _i5.PostReplySettings) {
      return _i5.PostReplySettings.fromJson(data) as T;
    }
    if (t == _i6.PostType) {
      return _i6.PostType.fromJson(data) as T;
    }
    if (t == _i7.User) {
      return _i7.User.fromJson(data, this) as T;
    }
    if (t == _i1.getType<_i2.Example?>()) {
      return (data != null ? _i2.Example.fromJson(data, this) : null) as T;
    }
    if (t == _i1.getType<_i3.Post?>()) {
      return (data != null ? _i3.Post.fromJson(data, this) : null) as T;
    }
    if (t == _i1.getType<_i4.PostAudienceSettings?>()) {
      return (data != null ? _i4.PostAudienceSettings.fromJson(data) : null)
          as T;
    }
    if (t == _i1.getType<_i5.PostReplySettings?>()) {
      return (data != null ? _i5.PostReplySettings.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i6.PostType?>()) {
      return (data != null ? _i6.PostType.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i7.User?>()) {
      return (data != null ? _i7.User.fromJson(data, this) : null) as T;
    }
    if (t == List<_i8.Post>) {
      return (data as List).map((e) => deserialize<_i8.Post>(e)).toList()
          as dynamic;
    }
    try {
      return _i9.Protocol().deserialize<T>(data, t);
    } catch (_) {}
    return super.deserialize<T>(data, t);
  }

  @override
  String? getClassNameForObject(Object data) {
    String? className;
    className = _i9.Protocol().getClassNameForObject(data);
    if (className != null) {
      return 'serverpod_auth.$className';
    }
    if (data is _i2.Example) {
      return 'Example';
    }
    if (data is _i3.Post) {
      return 'Post';
    }
    if (data is _i4.PostAudienceSettings) {
      return 'PostAudienceSettings';
    }
    if (data is _i5.PostReplySettings) {
      return 'PostReplySettings';
    }
    if (data is _i6.PostType) {
      return 'PostType';
    }
    if (data is _i7.User) {
      return 'User';
    }
    return super.getClassNameForObject(data);
  }

  @override
  dynamic deserializeByClassName(Map<String, dynamic> data) {
    if (data['className'].startsWith('serverpod_auth.')) {
      data['className'] = data['className'].substring(15);
      return _i9.Protocol().deserializeByClassName(data);
    }
    if (data['className'] == 'Example') {
      return deserialize<_i2.Example>(data['data']);
    }
    if (data['className'] == 'Post') {
      return deserialize<_i3.Post>(data['data']);
    }
    if (data['className'] == 'PostAudienceSettings') {
      return deserialize<_i4.PostAudienceSettings>(data['data']);
    }
    if (data['className'] == 'PostReplySettings') {
      return deserialize<_i5.PostReplySettings>(data['data']);
    }
    if (data['className'] == 'PostType') {
      return deserialize<_i6.PostType>(data['data']);
    }
    if (data['className'] == 'User') {
      return deserialize<_i7.User>(data['data']);
    }
    return super.deserializeByClassName(data);
  }
}
