/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports
// ignore_for_file: use_super_parameters
// ignore_for_file: type_literal_in_constant_pattern

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod/serverpod.dart' as _i1;
import 'protocol.dart' as _i2;

abstract class Post extends _i1.TableRow {
  Post._({
    int? id,
    required this.caption,
    required this.imageUrl,
    required this.type,
    required this.audience,
    required this.reply,
    required this.userId,
    required this.username,
    required this.profileImageUrl,
  }) : super(id);

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

  static final t = PostTable();

  static const db = PostRepository._();

  String caption;

  String imageUrl;

  _i2.PostType type;

  _i2.PostAudienceSettings audience;

  _i2.PostReplySettings reply;

  int userId;

  String username;

  String profileImageUrl;

  @override
  _i1.Table get table => t;

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

  @override
  @Deprecated('Will be removed in 2.0.0')
  Map<String, dynamic> toJsonForDatabase() {
    return {
      'id': id,
      'caption': caption,
      'imageUrl': imageUrl,
      'type': type,
      'audience': audience,
      'reply': reply,
      'userId': userId,
      'username': username,
      'profileImageUrl': profileImageUrl,
    };
  }

  @override
  Map<String, dynamic> allToJson() {
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

  @override
  @Deprecated('Will be removed in 2.0.0')
  void setColumn(
    String columnName,
    value,
  ) {
    switch (columnName) {
      case 'id':
        id = value;
        return;
      case 'caption':
        caption = value;
        return;
      case 'imageUrl':
        imageUrl = value;
        return;
      case 'type':
        type = value;
        return;
      case 'audience':
        audience = value;
        return;
      case 'reply':
        reply = value;
        return;
      case 'userId':
        userId = value;
        return;
      case 'username':
        username = value;
        return;
      case 'profileImageUrl':
        profileImageUrl = value;
        return;
      default:
        throw UnimplementedError();
    }
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.find instead.')
  static Future<List<Post>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<PostTable>? where,
    int? limit,
    int? offset,
    _i1.Column? orderBy,
    List<_i1.Order>? orderByList,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.find<Post>(
      where: where != null ? where(Post.t) : null,
      limit: limit,
      offset: offset,
      orderBy: orderBy,
      orderByList: orderByList,
      orderDescending: orderDescending,
      useCache: useCache,
      transaction: transaction,
    );
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.findRow instead.')
  static Future<Post?> findSingleRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<PostTable>? where,
    int? offset,
    _i1.Column? orderBy,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.findSingleRow<Post>(
      where: where != null ? where(Post.t) : null,
      offset: offset,
      orderBy: orderBy,
      orderDescending: orderDescending,
      useCache: useCache,
      transaction: transaction,
    );
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.findById instead.')
  static Future<Post?> findById(
    _i1.Session session,
    int id,
  ) async {
    return session.db.findById<Post>(id);
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.deleteWhere instead.')
  static Future<int> delete(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<PostTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<Post>(
      where: where(Post.t),
      transaction: transaction,
    );
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.deleteRow instead.')
  static Future<bool> deleteRow(
    _i1.Session session,
    Post row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteRow(
      row,
      transaction: transaction,
    );
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.update instead.')
  static Future<bool> update(
    _i1.Session session,
    Post row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.update(
      row,
      transaction: transaction,
    );
  }

  @Deprecated(
      'Will be removed in 2.0.0. Use: db.insert instead. Important note: In db.insert, the object you pass in is no longer modified, instead a new copy with the added row is returned which contains the inserted id.')
  static Future<void> insert(
    _i1.Session session,
    Post row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insert(
      row,
      transaction: transaction,
    );
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.count instead.')
  static Future<int> count(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<PostTable>? where,
    int? limit,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<Post>(
      where: where != null ? where(Post.t) : null,
      limit: limit,
      useCache: useCache,
      transaction: transaction,
    );
  }

  static PostInclude include() {
    return PostInclude._();
  }

  static PostIncludeList includeList({
    _i1.WhereExpressionBuilder<PostTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<PostTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<PostTable>? orderByList,
    PostInclude? include,
  }) {
    return PostIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(Post.t),
      orderDescending: orderDescending,
      orderByList: orderByList?.call(Post.t),
      include: include,
    );
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

class PostTable extends _i1.Table {
  PostTable({super.tableRelation}) : super(tableName: 'posts') {
    caption = _i1.ColumnString(
      'caption',
      this,
    );
    imageUrl = _i1.ColumnString(
      'imageUrl',
      this,
    );
    type = _i1.ColumnEnum(
      'type',
      this,
      _i1.EnumSerialization.byIndex,
    );
    audience = _i1.ColumnEnum(
      'audience',
      this,
      _i1.EnumSerialization.byIndex,
    );
    reply = _i1.ColumnEnum(
      'reply',
      this,
      _i1.EnumSerialization.byIndex,
    );
    userId = _i1.ColumnInt(
      'userId',
      this,
    );
    username = _i1.ColumnString(
      'username',
      this,
    );
    profileImageUrl = _i1.ColumnString(
      'profileImageUrl',
      this,
    );
  }

  late final _i1.ColumnString caption;

  late final _i1.ColumnString imageUrl;

  late final _i1.ColumnEnum<_i2.PostType> type;

  late final _i1.ColumnEnum<_i2.PostAudienceSettings> audience;

  late final _i1.ColumnEnum<_i2.PostReplySettings> reply;

  late final _i1.ColumnInt userId;

  late final _i1.ColumnString username;

  late final _i1.ColumnString profileImageUrl;

  @override
  List<_i1.Column> get columns => [
        id,
        caption,
        imageUrl,
        type,
        audience,
        reply,
        userId,
        username,
        profileImageUrl,
      ];
}

@Deprecated('Use PostTable.t instead.')
PostTable tPost = PostTable();

class PostInclude extends _i1.IncludeObject {
  PostInclude._();

  @override
  Map<String, _i1.Include?> get includes => {};

  @override
  _i1.Table get table => Post.t;
}

class PostIncludeList extends _i1.IncludeList {
  PostIncludeList._({
    _i1.WhereExpressionBuilder<PostTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderDescending,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(Post.t);
  }

  @override
  Map<String, _i1.Include?> get includes => include?.includes ?? {};

  @override
  _i1.Table get table => Post.t;
}

class PostRepository {
  const PostRepository._();

  Future<List<Post>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<PostTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<PostTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<PostTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.find<Post>(
      where: where?.call(Post.t),
      orderBy: orderBy?.call(Post.t),
      orderByList: orderByList?.call(Post.t),
      orderDescending: orderDescending,
      limit: limit,
      offset: offset,
      transaction: transaction,
    );
  }

  Future<Post?> findFirstRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<PostTable>? where,
    int? offset,
    _i1.OrderByBuilder<PostTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<PostTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.findFirstRow<Post>(
      where: where?.call(Post.t),
      orderBy: orderBy?.call(Post.t),
      orderByList: orderByList?.call(Post.t),
      orderDescending: orderDescending,
      offset: offset,
      transaction: transaction,
    );
  }

  Future<Post?> findById(
    _i1.Session session,
    int id, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.findById<Post>(
      id,
      transaction: transaction,
    );
  }

  Future<List<Post>> insert(
    _i1.Session session,
    List<Post> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.insert<Post>(
      rows,
      transaction: transaction,
    );
  }

  Future<Post> insertRow(
    _i1.Session session,
    Post row, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.insertRow<Post>(
      row,
      transaction: transaction,
    );
  }

  Future<List<Post>> update(
    _i1.Session session,
    List<Post> rows, {
    _i1.ColumnSelections<PostTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.update<Post>(
      rows,
      columns: columns?.call(Post.t),
      transaction: transaction,
    );
  }

  Future<Post> updateRow(
    _i1.Session session,
    Post row, {
    _i1.ColumnSelections<PostTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.updateRow<Post>(
      row,
      columns: columns?.call(Post.t),
      transaction: transaction,
    );
  }

  Future<List<int>> delete(
    _i1.Session session,
    List<Post> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.delete<Post>(
      rows,
      transaction: transaction,
    );
  }

  Future<int> deleteRow(
    _i1.Session session,
    Post row, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.deleteRow<Post>(
      row,
      transaction: transaction,
    );
  }

  Future<List<int>> deleteWhere(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<PostTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.deleteWhere<Post>(
      where: where(Post.t),
      transaction: transaction,
    );
  }

  Future<int> count(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<PostTable>? where,
    int? limit,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.count<Post>(
      where: where?.call(Post.t),
      limit: limit,
      transaction: transaction,
    );
  }
}
