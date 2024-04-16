/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports
// ignore_for_file: use_super_parameters
// ignore_for_file: type_literal_in_constant_pattern

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod_client/serverpod_client.dart' as _i1;
import 'protocol.dart' as _i2;

abstract class Post extends _i1.SerializableEntity {
  Post._({
    this.id,
    required this.caption,
    required this.imageUrl,
    required this.type,
    required this.audience,
    required this.reply,
    required this.userId,
    required this.username,
    required this.profileImageUrl,
  });

  factory Post({
    int? id,
    required String caption,
    required String imageUrl,
    required _i2.PostType type,
    required _i2.PostAudienceSettings audience,
    required _i2.PostReplySettings reply,
    required int userId,
    required String username,
    required String profileImageUrl,
  }) = _PostImpl;

  factory Post.fromJson(
    Map<String, dynamic> jsonSerialization,
    _i1.SerializationManager serializationManager,
  ) {
    return Post(
      id: serializationManager.deserialize<int?>(jsonSerialization['id']),
      caption: serializationManager
          .deserialize<String>(jsonSerialization['caption']),
      imageUrl: serializationManager
          .deserialize<String>(jsonSerialization['imageUrl']),
      type: serializationManager
          .deserialize<_i2.PostType>(jsonSerialization['type']),
      audience: serializationManager
          .deserialize<_i2.PostAudienceSettings>(jsonSerialization['audience']),
      reply: serializationManager
          .deserialize<_i2.PostReplySettings>(jsonSerialization['reply']),
      userId:
          serializationManager.deserialize<int>(jsonSerialization['userId']),
      username: serializationManager
          .deserialize<String>(jsonSerialization['username']),
      profileImageUrl: serializationManager
          .deserialize<String>(jsonSerialization['profileImageUrl']),
    );
  }

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  int? id;

  String caption;

  String imageUrl;

  _i2.PostType type;

  _i2.PostAudienceSettings audience;

  _i2.PostReplySettings reply;

  int userId;

  String username;

  String profileImageUrl;

  Post copyWith({
    int? id,
    String? caption,
    String? imageUrl,
    _i2.PostType? type,
    _i2.PostAudienceSettings? audience,
    _i2.PostReplySettings? reply,
    int? userId,
    String? username,
    String? profileImageUrl,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      if (id != null) 'id': id,
      'caption': caption,
      'imageUrl': imageUrl,
      'type': type.toJson(),
      'audience': audience.toJson(),
      'reply': reply.toJson(),
      'userId': userId,
      'username': username,
      'profileImageUrl': profileImageUrl,
    };
  }
}

class _Undefined {}

class _PostImpl extends Post {
  _PostImpl({
    int? id,
    required String caption,
    required String imageUrl,
    required _i2.PostType type,
    required _i2.PostAudienceSettings audience,
    required _i2.PostReplySettings reply,
    required int userId,
    required String username,
    required String profileImageUrl,
  }) : super._(
          id: id,
          caption: caption,
          imageUrl: imageUrl,
          type: type,
          audience: audience,
          reply: reply,
          userId: userId,
          username: username,
          profileImageUrl: profileImageUrl,
        );

  @override
  Post copyWith({
    Object? id = _Undefined,
    String? caption,
    String? imageUrl,
    _i2.PostType? type,
    _i2.PostAudienceSettings? audience,
    _i2.PostReplySettings? reply,
    int? userId,
    String? username,
    String? profileImageUrl,
  }) {
    return Post(
      id: id is int? ? id : this.id,
      caption: caption ?? this.caption,
      imageUrl: imageUrl ?? this.imageUrl,
      type: type ?? this.type,
      audience: audience ?? this.audience,
      reply: reply ?? this.reply,
      userId: userId ?? this.userId,
      username: username ?? this.username,
      profileImageUrl: profileImageUrl ?? this.profileImageUrl,
    );
  }
}
