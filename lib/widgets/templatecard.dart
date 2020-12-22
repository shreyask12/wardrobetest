import 'dart:io';

import 'package:flutter/material.dart';
import 'package:wardrobetest/constants.dart';

class BestTemplatesCard extends StatelessWidget {
  // url of image
  final String imageUrl;
  final String path;
  // card title
  final String title;

  const BestTemplatesCard(
      {Key key, @required this.imageUrl, @required this.title, this.path})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: sWidth(360.0),
          width: sWidth(320.0),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(sSp(24)),
            boxShadow: [kCardShadow],
          ),
          child: Column(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(sSp(24)),
                  topLeft: Radius.circular(sSp(24)),
                ),
                child: imageUrl != null
                    ? Image.asset(
                        'assets/images/$imageUrl.jpeg',
                        width: sWidth(300.0),
                        height: sWidth(300.0),
                        fit: BoxFit.cover,
                      )
                    : Image.file(
                        File(path),
                        width: sWidth(300.0),
                        height: sWidth(300.0),
                        fit: BoxFit.cover,
                      ),
              ),
              SizedBox(
                height: sHeight(10.0),
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: sWidth(36.0),
                ),
                child: Text(
                  imageUrl != null ? title : path.substring(path.length - 5),
                  style: kTemplateCardTitle,
                  maxLines: 2,
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
