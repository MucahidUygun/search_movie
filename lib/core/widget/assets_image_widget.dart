import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

Widget getImage(String url) {
  if (url == "N/A" || url =="assets/image/emptyImageUrl.jpg") {
    return Image.asset("assets/image/emptyImageUrl.jpg",);
  }else if(url == ""){
    return Image.asset(
      "assets/image/splash.jpg",
      fit: BoxFit.fill,
      );
  } 
  else {
    return Image.network(
      url,
      fit: BoxFit.fill,
    );
  }
}