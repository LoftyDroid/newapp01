import 'package:flutter/material.dart';

class NewsContainer extends StatelessWidget {
  String imgurl;
  String newsHead;
  String newsDes;
  String newsUrl;

  NewsContainer({
    super.key,
    required this.imgurl,
    required this.newsDes,
    required this.newsHead,
    required this.newsUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Image.network(
            height: 400,
            width: MediaQuery.of(context).size.width,
            fit: BoxFit.cover,
            imgurl),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            SizedBox(
              height: 20,
            ),
            Text(
              newsHead,
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              newsDes,
              style: TextStyle(fontSize: 16),
            ),
          ]),
        ),
        Spacer(),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: ElevatedButton(
                  onPressed: () {
                    print("Going To $newsUrl");
                  },
                  child: Text("Read More")),
            ),
          ],
        )
      ]),
    );
  }
}
