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
      ),
    );
  }
}
