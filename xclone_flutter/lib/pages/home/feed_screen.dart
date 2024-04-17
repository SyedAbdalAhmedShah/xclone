import 'package:flutter/material.dart';
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

  final List<String> allImagePath = [
    "https://images.unsplash.com/photo-1500648767791-00dcc994a43e?q=80&w=1887&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
    "https://images.unsplash.com/photo-1494790108377-be9c29b29330?q=80&w=1887&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
    "https://plus.unsplash.com/premium_photo-1688891564708-9b2247085923?q=80&w=1887&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
    "https://images.unsplash.com/photo-1619895862022-09114b41f16f?q=80&w=1740&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
    "https://images.unsplash.com/photo-1517841905240-472988babdf9?q=80&w=1887&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
    "https://images.unsplash.com/photo-1500648767791-00dcc994a43e?q=80&w=1887&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
    "https://images.unsplash.com/photo-1494790108377-be9c29b29330?q=80&w=1887&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemCount: allImagePath.length,
      itemBuilder: (context, index) => PostWidget(
        imagePath: allImagePath[index],
      ),
      separatorBuilder: (context, index) => const Divider(),
    );
  }
}

class PostWidget extends StatelessWidget {
  final String imagePath;
  const PostWidget({super.key, required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const CircleAvatar(),
          const SizedBox(
            width: 10,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.max,
            children: [
              Row(
                children: [
                  const Text(
                    "User1",
                    style: TextStyle(fontWeight: FontWeight.bold),
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
              const Text("New uploaded caption 1 !!!"),
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
                        image: NetworkImage(imagePath),
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
