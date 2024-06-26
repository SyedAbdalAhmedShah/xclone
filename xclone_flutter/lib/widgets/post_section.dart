import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:xclone_client/xclone_client.dart';
import 'package:xclone_flutter/widgets/cache_image.dart';
import 'package:xclone_flutter/widgets/post_action_sheet.dart';
import 'package:xclone_flutter/widgets/post_stats.dart';

class PostWidget extends StatefulWidget {
  final Post post;
  const PostWidget({super.key, required this.post});

  @override
  State<PostWidget> createState() => _PostWidgetState();
}

class _PostWidgetState extends State<PostWidget>
    with AutomaticKeepAliveClientMixin {
  @override
  Widget build(BuildContext context) {
    super.build(context);
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CircleAvatar(
                backgroundImage:
                    CachedNetworkImageProvider(widget.post.profileImageUrl),
              ),
              const SizedBox(
                width: 10,
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          widget.post.username,
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
                        InkWell(
                          onTap: () {
                            showModalBottomSheet(
                              context: context,
                              builder: (context) => Container(
                                  padding: const EdgeInsets.all(16.0),
                                  margin: const EdgeInsets.only(bottom: 8.0),
                                  child: const PostActionSheet()),
                            );
                          },
                          customBorder: const CircleBorder(),
                          child: const Icon(Icons.more_horiz),
                        )
                      ],
                    ),
                    Text(widget.post.caption),
                    CacheWebImages(
                      imageUrl: widget.post.imageUrl,
                    ),
                    const SizedBox(
                      height: 12,
                    ),
                    PostStats(post: widget.post)
                  ],
                ),
              )
            ],
          ),
        ],
      ),
    );
  }

  @override
  bool get wantKeepAlive => true;
}
