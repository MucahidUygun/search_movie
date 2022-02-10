extension StringExtension on String {
  String get apiKey => "api key";
  String get typeContent => "application/json";
  String get urlMovie => "https://api.collectapi.com/imdb/imdbSearchByName?query=";
  String get urlMovieDetails => "https://api.collectapi.com/imdb/imdbSearchById?movieId=";
  String get searcBoxText => "Please enter the name of the movie you want to search";
  String get searchButtonText => "Send";
  String get appBarText=> "Search Movie App";
  String get emptyImageUrl=>"assets/image/emptyImageUrl.jpg";
  String get nA=> "N/A";
  String get splash => "assets/image/splash.jpg";
}