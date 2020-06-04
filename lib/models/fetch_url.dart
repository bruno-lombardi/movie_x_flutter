enum FetchUrl {
  NOW_PLAYING,
  POPULAR,
  UPCOMING,
  DISCOVER,
}

Map<FetchUrl, String> fetchUrls = {
  FetchUrl.NOW_PLAYING: '/movie/now_playing',
  FetchUrl.POPULAR: '/movie/popular',
  FetchUrl.UPCOMING: '/movie/upcoming',
  FetchUrl.DISCOVER: '/discover/movie',
};
