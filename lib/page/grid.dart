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
      "Url":
          "https://www.dropbox.com/s/v5y7o0ag3854t9o/5_6055536521627304321.viz?dl=1"
    },
    {
      "Image": "https://i.ibb.co/FDDx3Y8/Video-Capture-20201021-201342.jpg ",
      "Url":
          "https://api.onedrive.com/v1.0/shares/s!AsUmxwm8ZZqygUyZ6WNSfidYeGo-/root/content"
    },
    {
      "Image": "https://i.ibb.co/QdkpPb4/Video-Capture-20201020-063913.jpg ",
      "Url":
          "https://api.onedrive.com/v1.0/shares/s!AsUmxwm8ZZqygUqKxVFxIAFKD23y/root/content"
    },
    {
      "Image": "https://i.ibb.co/2qMXDNx/Video-Capture-20201019-101552.jpg ",
      "Url":
          "https://api.onedrive.com/v1.0/shares/s!AsUmxwm8ZZqygUloSx9wzGAz7c03/root/content"
    },
    {
      "Image": "https://i.ibb.co/XWGk5C1/Video-Capture-20201031-202013.jpg ",
      "Url":
          "https://api.onedrive.com/v1.0/shares/s!AsUmxwm8ZZqygV_qUR7lA8KAQErI/root/content"
    },
    {
      "Image": "https://i.ibb.co/LRh62Rn/Video-Capture-20201031-201444.jpg ",
      "Url":
          "https://api.onedrive.com/v1.0/shares/s!AsUmxwm8ZZqygVuIVV377JMTRDfO/root/content"
    },
    {
      "Image": "https://i.ibb.co/pnNbQ45/Video-Capture-20201028-193748.jpg ",
      "Url":
          "https://api.onedrive.com/v1.0/shares/s!AsUmxwm8ZZqygVjWbEH3Vuoql36D/root/content"
    },
    {
      "Image": "https://i.ibb.co/BCFWjyV/Video-Capture-20201028-193754.jpg",
      "Url":
          "https://api.onedrive.com/v1.0/shares/s!AsUmxwm8ZZqygVjWbEH3Vuoql36D/root/content"
    },
    {
      "Image": "https://i.ibb.co/QmqwpwD/Video-Capture-20201028-193759.jpg ",
      "Url":
          "https://api.onedrive.com/v1.0/shares/s!AsUmxwm8ZZqygVo9H5lY4aqVSTTD/root/content"
    },
    {
      "Image": "https://i.ibb.co/xhnqzQK/Video-Capture-20201031-202003.jpg ",
      "Url":
          "https://api.onedrive.com/v1.0/shares/s!AsUmxwm8ZZqygV3h5WP2SjpPemJo/root/content"
    },
    {
      "Image": "https://i.ibb.co/Ns30tqj/Video-Capture-20201031-202007.jpg ",
      "Url":
          "https://api.onedrive.com/v1.0/shares/s!AsUmxwm8ZZqygV468OzVdkGCx5RC/root/content"
    },
    {
      "Image": "https://i.ibb.co/rHtv1yx/Video-Capture-20201023-230329.jpg ",
      "Url":
          "https://api.onedrive.com/v1.0/shares/s!AsUmxwm8ZZqygVU6oEHtmQZmA_PF/root/content"
    },
    {
      "Image": "https://i.ibb.co/30Ydvt5/Video-Capture-20201022-184812.jpg ",
      "Url":
          "https://api.onedrive.com/v1.0/shares/s!AsUmxwm8ZZqygU7baElx9spF2X1P/root/content"
    },
    {
      "Image": "https://i.ibb.co/M7qSF26/Video-Capture-20201022-184818.jpg ",
      "Url":
          "https://api.onedrive.com/v1.0/shares/s!AsUmxwm8ZZqygU9Nza0QZFUwYKLD/root/content"
    },
    {
      "Image": "https://i.ibb.co/zP9VC6H/Video-Capture-20201021-075908.jpg ",
      "Url":
          "https://api.onedrive.com/v1.0/shares/s!AsUmxwm8ZZqygUvTc1QQrSCmm_Qz/root/content"
    },
    {
      "Image": "https://i.ibb.co/CwqWyjB/Video-Capture-20201027-112841.jpg ",
      "Url":
          "https://api.onedrive.com/v1.0/shares/s!AsUmxwm8ZZqygVe3h7wJfGoKZr_P/root/content"
    },
    {
      "Image": "https://i.ibb.co/Jc1BQS8/Video-Capture-20201027-111629.jpg ",
      "Url":
          "https://api.onedrive.com/v1.0/shares/s!AsUmxwm8ZZqygVZBav1dpboGLTm3/root/content"
    },
    {
      "Image": "https://i.ibb.co/f05S3f7/Video-Capture-20201023-230224.jpg ",
      "Url":
          "https://api.onedrive.com/v1.0/shares/s!AsUmxwm8ZZqygVH13uv9YbMdj1D0/root/content"
    },
    {
      "Image": "https://i.ibb.co/stfjCMt/Video-Capture-20201023-230231.jpg ",
      "Url":
          "https://api.onedrive.com/v1.0/shares/s!AsUmxwm8ZZqygVITf9KZYPY91X_t/root/content"
    },
    {
      "Image": "https://i.ibb.co/kxb2qT0/Video-Capture-20201023-230249.jpg ",
      "Url":
          "https://api.onedrive.com/v1.0/shares/s!AsUmxwm8ZZqygVNbU2dVYLqRUlIx/root/content"
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
