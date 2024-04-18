import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:xclone_flutter/blocs/feed_bloc/feed_bloc.dart';
import 'package:xclone_flutter/constants/app_assets.dart';
import 'package:xclone_flutter/constants/app_strings.dart';
import 'package:xclone_flutter/widgets/post_section.dart';

class FeedScreen extends StatelessWidget {
  const FeedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Image(
            image: AssetImage(AppAssets.xLogo),
            height: 40,
          ),
          bottom: const PreferredSize(
            preferredSize: Size.fromHeight(56.0),
            child: TabBar(
              tabs: [
                Tab(
                  text: AppStrings.forYou,
                ),
                Tab(
                  text: AppStrings.following,
                )
              ],
            ),
          ),
        ),
        body: const TabBarView(
          physics: NeverScrollableScrollPhysics(),
          children: [
            ForYouPosts(),
            Center(
              child: Text(AppStrings.following),
            )
          ],
        ),
      ),
    );
  }
}

class ForYouPosts extends StatelessWidget {
  const ForYouPosts({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FeedBloc, FeedState>(
      builder: (BuildContext context, FeedState state) {
        if (state.status == FeedStatus.initial ||
            state.status == FeedStatus.loading) {
          return const Center(
            child: CircularProgressIndicator.adaptive(),
          );
        } else if (state.status == FeedStatus.loaded) {
          final allPosts = state.posts;
          return ListView.separated(
            addAutomaticKeepAlives: true,
            itemCount: allPosts.length,
            itemBuilder: (context, index) => PostWidget(
              post: allPosts[index],
            ),
            separatorBuilder: (context, index) => const Divider(),
          );
        } else {
          return const Center(
            child: Text("SOMETHING WENT WRONG...."),
          );
        }
      },
    );
  }
}
