import 'dart:math';

import 'package:http/http.dart';
import 'dart:convert';

import 'package:newapp/model/newsArt.dart';

class FetchNews {
  static List sourcesId = [
    "abc-news",
    "abc-news-au",
    "aftenposten",
    "al-jazeera-english",
    "ansa",
    "argaam",
    "ars-tecnica",
    "ary-news",
    "associated-press",
    "axios",
    "bbc-news",
    "bbc-sport",
  ];

  static Future<NewsArt> fetchNews() async {
    final _random = new Random();
    var sourcesID = sourcesId[_random.nextInt(sourcesId.length)];
    print(sourcesID);
    Response response = await get(Uri.parse(
        "https://newsapi.org/v2/top-headlines?sources=$sourcesID&apiKey=dceba8ebecbc48a4b0dd6176125165c0"));

    Map body_data = jsonDecode(response.body);
    List articles = body_data["articles"];

    print(body_data);

    final _Newrandom = new Random();
    var myArticle = articles[_random.nextInt(articles.length)];
    print(myArticle);

    return NewsArt.fromAPItoApp(myArticle);
  }
}
