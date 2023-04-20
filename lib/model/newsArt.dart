class NewsArt {
  String imgurl;
  String newsHead;
  String newsCnt;
  String newsUrl;
  String newsDes;

  NewsArt({
    required this.imgurl,
    required this.newsCnt,
    required this.newsDes,
    required this.newsHead,
    required this.newsUrl,
  });

  static NewsArt fromAPItoApp(Map<String, dynamic> article) {
    return NewsArt(
      imgurl: article["urlToImage"] ??
          "https://images.unsplash.com/photo-1504711331083-9c895941bf81?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MjB8fG5ld3MlMjBoZWFkbGluZXxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60",
      newsCnt: article["content"] ?? "--",
      newsDes: article["description"] ?? "--",
      newsHead: article["title"] ?? "--",
      newsUrl: article["url"] ??
          "https://news.google.com/home?hl=en-IN&gl=IN&ceid=IN:en",
    );
  }
}
