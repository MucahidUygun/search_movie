import 'package:flutter/material.dart';
import 'package:search_movie/core/extension/context_extension.dart';
import 'package:search_movie/core/theme/theme_colors.dart';
import 'package:search_movie/core/theme/theme_data_extension.dart';
import 'package:search_movie/view/movie/view/movie_view.dart';

class SearchWordsView extends StatelessWidget {
  const SearchWordsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

  final TextEditingController textEditingController = TextEditingController();

    return Scaffold(
      body: Padding(
        padding: context.paddingMedium,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            TextFormField(
              cursorHeight: context.lowValue,
              controller: textEditingController,
  
              decoration: InputDecoration(
                border: UnderlineInputBorder(
                  borderRadius: BorderRadius.circular(5),
                  borderSide:const BorderSide(color: ThemeColor.titleDarkColor),
                  ),
                contentPadding: EdgeInsets.only(left: context.primaryLowValue),
                hintText: "Please enter the name of the movie you want to search",
                hintStyle: Theme.of(context).headline5.copyWith(
                color: ThemeColor.titleLightColor,
                ),
              )
            ),
            TextButton(
              onPressed: () async {
                Navigator.push( context, 
                  MaterialPageRoute(builder: (BuildContext context)=> MovieView(movieName:textEditingController.value.text)));
              }, 
              child: Text(
                "Send",
                style: Theme.of(context).headline4.copyWith(
                color: ThemeColor.titleDarkColor,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}