import 'fetch_url.dart';

class Query {
  int page;
  int genreId;
  FetchUrl fetchUrl;
  bool urlChanged;

  Query({this.page = 1, this.genreId, this.fetchUrl = FetchUrl.NOW_PLAYING, this.urlChanged = false});
}
