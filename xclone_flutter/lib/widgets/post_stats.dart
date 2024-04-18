import 'package:flutter/material.dart';
import 'package:xclone_client/xclone_client.dart';

class PostStats extends StatelessWidget {
  const PostStats({
    super.key,
    required this.post,
  });

  final Post post;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      mainAxisSize: MainAxisSize.max,
      children: [
        const Row(
          children: [
            Icon(Icons.comment),
            SizedBox(
              width: 5,
            ),
            Text("6")
          ],
        ),
        Row(
          children: [
            const Icon(Icons.repeat),
            const SizedBox(
              width: 5,
            ),
            Text(post.reply.toString())
          ],
        ),
        const Row(
          children: [
            Icon(Icons.favorite_border),
            SizedBox(
              width: 5,
            ),
            Text("6")
          ],
        ),
        const Row(
          children: [
            Icon(Icons.bar_chart),
            SizedBox(
              width: 5,
            ),
            Text("6")
          ],
        ),
        Icon(Icons.adaptive.share),
      ],
    );
  }
}
