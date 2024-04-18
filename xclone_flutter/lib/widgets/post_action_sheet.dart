import 'package:flutter/material.dart';
import 'package:xclone_flutter/constants/app_strings.dart';

class PostActionSheet extends StatelessWidget {
  const PostActionSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        const ListTile(
          leading: Icon(Icons.person_remove_alt_1_outlined),
          title: Text(
            AppStrings.unfollow,
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        const ListTile(
          leading: Icon(Icons.volume_off),
          title: Text(
            AppStrings.mute,
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        const ListTile(
          leading: Icon(Icons.code_outlined),
          title: Text(
            AppStrings.embedPost,
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        const SizedBox(
          height: 8.0,
        ),
        OutlinedButton(
            style: OutlinedButton.styleFrom(
                minimumSize: const Size.fromHeight(56.0)),
            onPressed: () {
              Navigator.pop(context);
            },
            child: const Text(AppStrings.cancel))
      ],
    );
  }
}
