import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'full.dart';

class grid extends StatelessWidget {
  grid({Key? key}) : super(key: key);

  List<Map<String, dynamic>> data = [
    {
      "Image":
          "https://live.staticflickr.com/65535/52003380576_6365826abc_c_d.jpg",
      "Url": "1"
    },
    {
      "Image": "https://i.ibb.co/FDDx3Y8/Video-Capture-20201021-201342.jpg ",
      "Url": "2"
    },
    {
      "Image": "https://i.ibb.co/QdkpPb4/Video-Capture-20201020-063913.jpg ",
      "Url": "3"
    },
    {
      "Image": "https://i.ibb.co/2qMXDNx/Video-Capture-20201019-101552.jpg ",
      "Url": "4"
    },
    {
      "Image": "https://i.ibb.co/XWGk5C1/Video-Capture-20201031-202013.jpg ",
      "Url": "5"
    },
    {
      "Image": "https://i.ibb.co/LRh62Rn/Video-Capture-20201031-201444.jpg ",
      "Url": "6"
    },
    {
      "Image": "https://i.ibb.co/pnNbQ45/Video-Capture-20201028-193748.jpg ",
      "Url": "7"
    },
    {
      "Image": "https://i.ibb.co/BCFWjyV/Video-Capture-20201028-193754.jpg",
      "Url": "8"
    },
    {
      "Image": "https://i.ibb.co/QmqwpwD/Video-Capture-20201028-193759.jpg ",
      "Url": "7"
    },
    {
      "Image": "https://i.ibb.co/xhnqzQK/Video-Capture-20201031-202003.jpg ",
      "Url": "8"
    },
    {
      "Image": "https://i.ibb.co/Ns30tqj/Video-Capture-20201031-202007.jpg ",
      "Url": "9"
    },
    {
      "Image": "https://i.ibb.co/rHtv1yx/Video-Capture-20201023-230329.jpg ",
      "Url": "10"
    },
    {
      "Image": "https://i.ibb.co/30Ydvt5/Video-Capture-20201022-184812.jpg ",
      "Url": "11"
    },
    {
      "Image": "https://i.ibb.co/M7qSF26/Video-Capture-20201022-184818.jpg ",
      "Url": "12"
    },
    {
      "Image": "https://i.ibb.co/zP9VC6H/Video-Capture-20201021-075908.jpg ",
      "Url": "13"
    },
    {
      "Image": "https://i.ibb.co/CwqWyjB/Video-Capture-20201027-112841.jpg ",
      "Url": "14"
    },
    {
      "Image": "https://i.ibb.co/Jc1BQS8/Video-Capture-20201027-111629.jpg ",
      "Url": "15"
    },
    {
      "Image": "https://i.ibb.co/f05S3f7/Video-Capture-20201023-230224.jpg ",
      "Url": "16"
    },
    {
      "Image": "https://i.ibb.co/stfjCMt/Video-Capture-20201023-230231.jpg ",
      "Url": "17"
    },
    {
      "Image": "https://i.ibb.co/kxb2qT0/Video-Capture-20201023-230249.jpg ",
      "Url": "18"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      child: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          childAspectRatio: 1,
          crossAxisCount: 3,
        ),
        itemCount: data.length,
        itemBuilder: (BuildContext context, int index) {
          var itemData = data[index];
          var img = itemData['Image'];
          return InkWell(
            onTap: () {
              final v1 = Navigator.push(context,
                  MaterialPageRoute(builder: (context) => Full(img: img)));
            },
            child: Container(
              child: CachedNetworkImage(
                imageUrl: img,
                fit: BoxFit.fill,
              ),
            ),
          );
          ;
        },
      ),
    );
  }
}
