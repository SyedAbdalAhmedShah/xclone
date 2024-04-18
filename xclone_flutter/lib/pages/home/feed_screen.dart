import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:xclone_client/xclone_client.dart';
import 'package:xclone_flutter/blocs/feed_bloc/feed_bloc.dart';
import 'package:xclone_flutter/constants/app_assets.dart';
import 'package:xclone_flutter/constants/app_strings.dart';

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
        body: TabBarView(
          physics: const NeverScrollableScrollPhysics(),
          children: [
            ForYouPosts(),
            const Center(
              child: Text(AppStrings.following),
            )
          ],
        ),
      ),
    );
  }
}

class ForYouPosts extends StatelessWidget {
  ForYouPosts({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FeedBloc, FeedState>(
      builder: (BuildContext context, FeedState state) {
        if (state.status == FeedStatus.initial || state.status == FeedStatus.loading) {
          return const Center(
            child: CircularProgressIndicator.adaptive(),
          );
        } else if (state.status == FeedStatus.loaded) {
          final allPosts = state.posts;
          return ListView.separated(
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

class PostWidget extends StatelessWidget {
  final Post post;
  const PostWidget({super.key, required this.post});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CircleAvatar(
            backgroundImage: NetworkImage(post.profileImageUrl),
          ),
          const SizedBox(
            width: 10,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.max,
            children: [
              Row(
                children: [
                  Text(
                    post.username,
                    style: const TextStyle(fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    width: 4,
                  ),
                  const Icon(
                    Icons.verified,
                    size: 12,
                  ),
                  const SizedBox(
                    width: 4,
                  ),
                  Text(
                    "@handle - Sep 28",
                    style: TextStyle(color: Colors.grey.shade700),
                  ),
                  const SizedBox(
                    width: 150,
                  ),
                  const Icon(Icons.more_horiz)
                ],
              ),
              Text(post.caption),
              Container(
                margin: const EdgeInsets.only(top: 10),
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(20), border: Border.all(color: Colors.grey)),
                padding: const EdgeInsets.all(10.0),
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(
                        fit: BoxFit.fill,
                        image: NetworkImage(post.imageUrl),
                      )),
                  height: 350,
                  width: MediaQuery.sizeOf(context).width * 0.78,
                ),
              ),
              const SizedBox(
                height: 12,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.end,
                mainAxisSize: MainAxisSize.max,
                children: [
                  Row(
                    children: [
                      Icon(Icons.comment),
                      SizedBox(
                        width: 5,
                      ),
                      Text("6")
                    ],
                  ),
                  SizedBox(
                    width: 30,
                  ),
                  Row(
                    children: [
                      Icon(Icons.repeat),
                      SizedBox(
                        width: 5,
                      ),
                      Text("6")
                    ],
                  ),
                  SizedBox(
                    width: 30,
                  ),
                  Row(
                    children: [
                      Icon(Icons.favorite_border),
                      SizedBox(
                        width: 5,
                      ),
                      Text("6")
                    ],
                  ),
                  SizedBox(
                    width: 30,
                  ),
                  Row(
                    children: [
                      Icon(Icons.bar_chart),
                      SizedBox(
                        width: 5,
                      ),
                      Text("6")
                    ],
                  ),
                  SizedBox(
                    width: 30,
                  ),
                  Row(
                    children: [
                      Icon(Icons.share),
                      SizedBox(
                        width: 5,
                      ),
                      Text("6")
                    ],
                  ),
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
