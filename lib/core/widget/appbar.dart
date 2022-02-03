import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:search_movie/core/theme/theme_colors.dart';
import 'package:search_movie/core/theme/theme_data_extension.dart';

class AppBarWidget extends StatelessWidget {
  const AppBarWidget({Key? key,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: true,
        title: Text(
          "Search Movie App",
          style: Theme.of(context).headline2.copyWith(
            color: ThemeColor.appBarLightColor,
            fontWeight: FontWeight.bold
          ),
          ),
        backgroundColor: ThemeColor.appBarColor,
        systemOverlayStyle: SystemUiOverlayStyle.light,
        elevation: 0,
    );
  }
}