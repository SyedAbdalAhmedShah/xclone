import 'package:serverpod/serverpod.dart';
import 'package:xclone_server/src/generated/post.dart';

class PostEndpoint extends Endpoint {
  Future<void> createPost(Session session, Post post) async {
    await Post.db.insertRow(session, post);
  }

  Future<void> deletePost(Session session, Post post) async {
    await Post.db.deleteRow(session, post);
  }

  Future<List<Post>> getAllPost(
    Session session,
  ) async {
    List<Post> allPost = await Post.db.find(
      session,
      orderBy: (p) => p.id,
    );
    return allPost;
  }
}
