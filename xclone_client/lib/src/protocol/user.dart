/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports
// ignore_for_file: use_super_parameters
// ignore_for_file: type_literal_in_constant_pattern

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod_client/serverpod_client.dart' as _i1;

abstract class User extends _i1.SerializableEntity {
  User._({
    this.id,
    required this.email,
    required this.username,
    required this.handle,
    required this.bio,
    required this.profileImageUrl,
    required this.profileBannerUrl,
    required this.followerCount,
    required this.followingCount,
  });

  factory User({
    int? id,
    required String email,
    required String username,
    required String handle,
    required String bio,
    required String profileImageUrl,
    required String profileBannerUrl,
    required int followerCount,
    required int followingCount,
  }) = _UserImpl;

  factory User.fromJson(
    Map<String, dynamic> jsonSerialization,
    _i1.SerializationManager serializationManager,
  ) {
    return User(
      id: serializationManager.deserialize<int?>(jsonSerialization['id']),
      email:
          serializationManager.deserialize<String>(jsonSerialization['email']),
      username: serializationManager
          .deserialize<String>(jsonSerialization['username']),
      handle:
          serializationManager.deserialize<String>(jsonSerialization['handle']),
      bio: serializationManager.deserialize<String>(jsonSerialization['bio']),
      profileImageUrl: serializationManager
          .deserialize<String>(jsonSerialization['profileImageUrl']),
      profileBannerUrl: serializationManager
          .deserialize<String>(jsonSerialization['profileBannerUrl']),
      followerCount: serializationManager
          .deserialize<int>(jsonSerialization['followerCount']),
      followingCount: serializationManager
          .deserialize<int>(jsonSerialization['followingCount']),
    );
  }

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  int? id;

  String email;

  String username;

  String handle;

  String bio;

  String profileImageUrl;

  String profileBannerUrl;

  int followerCount;

  int followingCount;

  User copyWith({
    int? id,
    String? email,
    String? username,
    String? handle,
    String? bio,
    String? profileImageUrl,
    String? profileBannerUrl,
    int? followerCount,
    int? followingCount,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      if (id != null) 'id': id,
      'email': email,
      'username': username,
      'handle': handle,
      'bio': bio,
      'profileImageUrl': profileImageUrl,
      'profileBannerUrl': profileBannerUrl,
      'followerCount': followerCount,
      'followingCount': followingCount,
    };
  }
}

class _Undefined {}

class _UserImpl extends User {
  _UserImpl({
    int? id,
    required String email,
    required String username,
    required String handle,
    required String bio,
    required String profileImageUrl,
    required String profileBannerUrl,
    required int followerCount,
    required int followingCount,
  }) : super._(
          id: id,
          email: email,
          username: username,
          handle: handle,
          bio: bio,
          profileImageUrl: profileImageUrl,
          profileBannerUrl: profileBannerUrl,
          followerCount: followerCount,
          followingCount: followingCount,
        );

  @override
  User copyWith({
    Object? id = _Undefined,
    String? email,
    String? username,
    String? handle,
    String? bio,
    String? profileImageUrl,
    String? profileBannerUrl,
    int? followerCount,
    int? followingCount,
  }) {
    return User(
      id: id is int? ? id : this.id,
      email: email ?? this.email,
      username: username ?? this.username,
      handle: handle ?? this.handle,
      bio: bio ?? this.bio,
      profileImageUrl: profileImageUrl ?? this.profileImageUrl,
      profileBannerUrl: profileBannerUrl ?? this.profileBannerUrl,
      followerCount: followerCount ?? this.followerCount,
      followingCount: followingCount ?? this.followingCount,
    );
  }
}
