import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class CacheWebImages extends StatelessWidget {
  final String imageUrl;
  const CacheWebImages({super.key, required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return CachedNetworkImage(
      imageUrl: imageUrl,
      imageBuilder: (context, imageProvider) => Container(
        margin: const EdgeInsets.only(top: 10),
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(20), border: Border.all(color: Colors.grey)),
        padding: const EdgeInsets.all(10.0),
        child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              image: DecorationImage(
                fit: BoxFit.fill,
                image: imageProvider,
              )),
          height: 350,
          width: MediaQuery.sizeOf(context).width * 0.78,
        ),
      ),
      placeholder: (context, url) => const Center(
        child: CircularProgressIndicator.adaptive(),
      ),
      errorWidget: (context, url, error) => const Icon(Icons.error),
    );
  }
}
