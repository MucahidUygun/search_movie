import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:search_movie/core/extension/string_extension.dart';

Widget getImage(String url) {
  if (url == "".nA || url =="".emptyImageUrl) {
    return Image.asset("".emptyImageUrl,);
  }else if(url == ""){
    return Image.asset(
      "".splash,
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