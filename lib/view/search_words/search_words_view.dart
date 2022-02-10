import 'package:flutter/material.dart';
import 'package:search_movie/core/extension/context_extension.dart';
import 'package:search_movie/core/extension/string_extension.dart';
import 'package:search_movie/core/theme/theme_colors.dart';
import 'package:search_movie/core/theme/theme_data_extension.dart';
import 'package:search_movie/core/widget/text_form_field_wigdet.dart';
import 'package:search_movie/core/widget/text_widget.dart';
import 'package:search_movie/view/movie/view/movie_view.dart';

class SearchWordsView extends StatelessWidget {
  const SearchWordsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
  final TextEditingController textEditingController = TextEditingController();

    return Scaffold(
      backgroundColor: ThemeColor.appBarColor,
      body: Padding(
        padding: context.paddingMedium,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            BuildTextFormField(textEditingController: textEditingController),
            TextButton(
              onPressed: () async {
                Navigator.pushReplacement(
                  context, 
                  MaterialPageRoute(builder: (BuildContext context)=> MovieView(movieName:textEditingController.value.text)));
              }, 
              child: getText(
                "".searchButtonText,
                context,
                Theme.of(context).headline4.copyWith(
                  color: ThemeColor.appBarLightColor,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

