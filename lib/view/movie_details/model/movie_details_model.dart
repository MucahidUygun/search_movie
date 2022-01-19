class MovieDetailsModel {
  bool? success;
  Result? result;

  MovieDetailsModel({this.success, this.result});

  MovieDetailsModel.fromJson(Map<String, dynamic> json) {
    success = json['success'];
    result =
        json['result'] != null ? Result.fromJson(json['result']) : null ;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data =  <String, dynamic>{};
    data['success'] = success;
    if (result != null) {
      data['result'] = result!.toJson();
    }
    return data;
  }
}

class Result {
    Result({
        this.title,
        this.year,
        this.rated,
        this.released,
        this.runtime,
        this.genre,
        this.director,
        this.writer,
        this.actors,
        this.plot,
        this.language,
        this.country,
        this.awards,
        this.poster,
        this.ratings,
        this.metascore,
        this.imdbRatings,
        this.imdbVotes,
        this.imdbId,
        this.type,
        this.dvd,
        this.boxOffice,
        this.production,
        this.website,
        this.response,
    });

    String? title;
    String? year;
    String? rated;
    String? released;
    String? runtime;
    String? genre;
    String? director;
    String? writer;
    String? actors;
    String? plot;
    String? language;
    String? country;
    String? awards;
    String? poster;
    String? metascore;
    String? imdbRatings;
    String? imdbVotes;
    String? imdbId;
    String? type;
    String? dvd;
    String? boxOffice;
    String? production;
    String? website;
    String? response;
    List<Ratings>? ratings;

    factory Result.fromJson(Map<String, dynamic> json) => Result(
        title: json["Title"],
        year: json["Year"],
        rated: json["Rated"],
        released: json["Released"],
        runtime: json["Runtime"],
        genre: json["Genre"],
        director: json["Director"],
        writer: json["Writer"],
        actors: json["Actors"],
        plot: json["Plot"],
        language: json["Language"],
        country: json["Country"],
        awards: json["Awards"],
        poster: json["Poster"],
        ratings: List<Ratings>.from(json["Ratings"].map((x) => Ratings.fromJson(x))),
        metascore: json["Metascore"],
        imdbRatings: json["imdbRating"],
        imdbVotes: json["imdbVotes"],
        imdbId: json["imdbID"],
        type: json["Type"],
        dvd: json["DVD"],
        boxOffice: json["BoxOffice"],
        production: json["Production"],
        website: json["Website"],
        response: json["Response"],
    );

    Map<String, dynamic> toJson() => {
        "Title": title,
        "Year": year,
        "Rated": rated,
        "Released": released,
        "Runtime": runtime,
        "Genre": genre,
        "Director": director,
        "Writer": writer,
        "Actors": actors,
        "Plot": plot,
        "Language": language,
        "Country": country,
        "Awards": awards,
        "Poster": poster,
        "Ratings": List<dynamic>.from(ratings!.map((x) => x.toJson())),
        "Metascore": metascore,
        "imdbRating": imdbRatings,
        "imdbVotes": imdbVotes,
        "imdbID": imdbId,
        "Type": type,
        "DVD": dvd,
        "BoxOffice": boxOffice,
        "Production": production,
        "Website": website,
        "Response": response,
    };
}
class Ratings {
  String? source;
  String? value;

  Ratings({this.source, this.value});

  Ratings.fromJson(Map<String, dynamic> json) {
    source = json['Source'];
    value = json['Value'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['Source'] = source;
    data['Value'] = value;
    return data;
  }
}
