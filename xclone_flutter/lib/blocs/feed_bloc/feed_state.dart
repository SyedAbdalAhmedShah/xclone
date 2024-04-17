part of 'feed_bloc.dart';

enum FeedStatus { initial, loading, loaded, error }

class FeedState extends Equatable {
  final FeedStatus status;
  final List<Post> posts;
  const FeedState({this.status = FeedStatus.initial, this.posts = const []});

  FeedState copyWith({FeedStatus? status, List<Post>? posts}) {
    return FeedState(posts: posts ?? this.posts, status: status ?? this.status);
  }

  @override
  // TODO: implement props
  List<Object?> get props => [status, posts];
}
