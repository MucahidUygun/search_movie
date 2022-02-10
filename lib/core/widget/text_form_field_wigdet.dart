import 'package:flutter/material.dart';
import 'package:search_movie/core/extension/context_extension.dart';
import 'package:search_movie/core/theme/theme_colors.dart';
import 'package:search_movie/core/theme/theme_data_extension.dart';
import 'package:search_movie/core/extension/string_extension.dart';

class BuildTextFormField extends StatelessWidget {
  const BuildTextFormField({
    Key? key,
    required this.textEditingController,
  }) : super(key: key);

  final TextEditingController textEditingController;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      style: Theme.of(context).headline4.copyWith(color: ThemeColor.appBarLightColor,),
      showCursor: true,
      controller: textEditingController,
      decoration: InputDecoration(
        border: UnderlineInputBorder(
          borderRadius: BorderRadius.circular(5),
          borderSide:const BorderSide(color: ThemeColor.titleDarkColor),
          ),
        contentPadding: EdgeInsets.only(left: context.primaryLowValue),
        hintText: "".searcBoxText,
        hintStyle: Theme.of(context).headline5.copyWith(
        color: ThemeColor.titleLightColor,
        ),
      ),
    );
  }
}