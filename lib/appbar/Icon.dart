// ignore_for_file: file_names

import 'package:flutter/material.dart';
import "package:flutter_svg/flutter_svg.dart";
import 'package:frolic/server/Link.dart';

class IconsHeader extends StatelessWidget {
  const IconsHeader({super.key});

  @override
  Widget build(BuildContext context) {
    double width = (MediaQuery.of(context).size.width) * 0.01,
        height = (MediaQuery.of(context).size.height) * 0.01;
    List<Map<String, dynamic>> iconsMAp = [
      {
        "icon": SvgPicture.asset(
          "img/insta.svg",
          width: width,
          height: height,
        ),
        "Click": () async {
          await launchURL("https://www.instagram.com/frolic.pub.cafe/");
        },
      },
      {
        "icon": SvgPicture.asset(
          "img/insta.svg",
          width: width,
          height: height,
        ),
        "Click": () async {
          await launchURL("https://www.facebook.com/FrolicPub/");
        },
      },
      {
        "icon": SvgPicture.asset(
          "img/insta.svg",
          width: width,
          height: height,
        ),
        "Click": () async {
          await launchURL("https://wa.me/9613458484");
        },
      },
      {
        "icon": Icon(
          Icons.map,
          size: width,
        ),
        "Click": () async {
          await launchURL("https://wa.me/9613458484");
        },
      },
    ];
    return SizedBox(
        width: MediaQuery.of(context).size.width / 3,
        height: 50,
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3),
          itemCount: iconsMAp.length,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: iconsMAp[index]["Click"],
              child: iconsMAp[index]["icon"],
            );
          },
        ));
  }
}
