import 'cast.dart';
import 'genre.dart';

class MovieDetail {
  bool adult;
  String backdropPath;
  int budget;
  List<Genre> genres;
  List<Cast> cast;
  String homepage;
  int id;
  String imdbId;
  String originalLanguage;
  String originalTitle;
  String overview;
  double popularity;
  String posterPath;
  String releaseDate;
  int revenue;
  int runtime;
  String status;
  String tagline;
  String title;
  bool video;
  double voteAverage;
  int voteCount;

  MovieDetail(
      {this.adult,
      this.backdropPath,
      this.budget,
      this.genres,
      this.homepage,
      this.id,
      this.imdbId,
      this.originalLanguage,
      this.originalTitle,
      this.overview,
      this.popularity,
      this.posterPath,
      this.releaseDate,
      this.revenue,
      this.runtime,
      this.status,
      this.tagline,
      this.title,
      this.video,
      this.voteAverage,
      this.voteCount});

  factory MovieDetail.fromJson(Map<String, dynamic> json) {
    MovieDetail movieDetail = new MovieDetail(
      adult: json['adult'],
      backdropPath: json['backdrop_path'],
      budget: json['budget'],
      homepage: json['homepage'],
      id: json['id'],
      imdbId: json['imdb_id'],
      originalLanguage: json['original_language'],
      originalTitle: json['original_title'],
      overview: json['overview'],
      popularity: json['popularity'],
      posterPath: json['poster_path'],
      releaseDate: json['release_date'],
      revenue: json['revenue'],
      runtime: json['runtime'],
      status: json['status'],
      tagline: json['tagline'],
      title: json['title'],
      video: json['video'],
      voteAverage: json['vote_average'],
      voteCount: json['vote_count'],
    );
    // DateTime releaseDate = DateTime.parse(movieDetail.releaseDate);
    // String formattedRelease ="${releaseDate.year.toString()}-${releaseDate.month.toString().padLeft(2,'0')}-${releaseDate.day.toString().padLeft(2,'0')}";

    // movieDetail.releaseDate = formattedRelease;

    if (json['genres'] != null) {
      movieDetail.genres = new List<Genre>();
      json['genres'].forEach((v) {
        movieDetail.genres.add(new Genre.fromJson(v));
      });
    }
    return movieDetail;
  }

  addCast(List<Cast> casts) {
    if (cast == null) {
      cast = List<Cast>();
    }
    cast.addAll(casts);
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['adult'] = this.adult;
    data['backdrop_path'] = this.backdropPath;
    data['budget'] = this.budget;
    if (this.genres != null) {
      data['genres'] = this.genres.map((v) => v.toJson()).toList();
    }
    data['homepage'] = this.homepage;
    data['id'] = this.id;
    data['imdb_id'] = this.imdbId;
    data['original_language'] = this.originalLanguage;
    data['original_title'] = this.originalTitle;
    data['overview'] = this.overview;
    data['popularity'] = this.popularity;
    data['poster_path'] = this.posterPath;

    data['release_date'] = this.releaseDate;
    data['revenue'] = this.revenue;
    data['runtime'] = this.runtime;

    data['status'] = this.status;
    data['tagline'] = this.tagline;
    data['title'] = this.title;
    data['video'] = this.video;
    data['vote_average'] = this.voteAverage;
    data['vote_count'] = this.voteCount;
    return data;
  }
}
