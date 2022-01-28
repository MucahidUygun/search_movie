import 'package:flutter/material.dart';
import 'package:search_movie/core/widget/assets_image_widget.dart';
import 'package:search_movie/view/search_words/search_words_view.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
    Future.delayed(
      const Duration(seconds: 3)
    ).then((value) => Navigator.pushReplacement(
        context, MaterialPageRoute(
          builder: (BuildContext context)=>
          const SearchWordsView()
        )
      )
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width,
                child:  getImage('assets/image/splashPage.jpg',),
              ),
            ],
          ),
        ),
      ),
    );
  }
}