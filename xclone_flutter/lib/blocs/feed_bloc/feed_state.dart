part of 'feed_bloc.dart';

sealed class FeedState extends Equatable {
  const FeedState();
}

final class FeedInitial extends FeedState {
  @override
  List<Object> get props => [];
}
