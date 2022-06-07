import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class Full extends StatelessWidget {
  String img;
  Full({Key? key, required this.img}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Image(image: CachedNetworkImageProvider(img)),
      // child: CachedNetworkImage(
      //     placeholder: (context, url) =>
      //         const CircularProgressIndicator(),
      //     imageUrl: img),
    );
  }
}
