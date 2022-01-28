import 'package:flutter/material.dart';

Widget getImage(String url) {
  if (url == "N/A" || url =="assets/image/emptyImageUrl.jpg") {
    return Image.asset("assets/image/emptyImageUrl.jpg",);
  } else {
    return Image.network(url);
  }
}