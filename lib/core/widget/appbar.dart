import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:search_movie/core/extension/string_extension.dart';
import 'package:search_movie/core/theme/theme_colors.dart';
import 'package:search_movie/core/theme/theme_data_extension.dart';

class AppBarWidget extends StatelessWidget {
  final bool automaticallyImplyLeading;
  const AppBarWidget({Key? key, required this.automaticallyImplyLeading,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: true,
      automaticallyImplyLeading: automaticallyImplyLeading,
        title: Text(
          "".appBarText,
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