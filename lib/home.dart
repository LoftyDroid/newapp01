import 'package:flutter/material.dart';
import 'package:newapp/widget/NewsContainer.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
          controller: PageController(initialPage: 1),
          scrollDirection: Axis.vertical,
          itemCount: 10,
          itemBuilder: (context, index) {
            return NewsContainer(
                imgurl:
                    "https://images.unsplash.com/photo-1588681664899-f142ff2dc9b1?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NHx8bmV3c3xlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60",
                newsDes:
                    "Reliance Jio and Bharti Airtel, two of the leading telecommunications players in India, have different strategies for rolling out 5G. But both are aiming to do it in the least time possible. While monetising 5G is still something that the industry is figuring out, the telcos want to reach everywhere possible with their 5G networks. To let users experience 5G and get used to it, telcos are offering it at no additional cost to 4G subscribers. With 4G, Jio and Airtel emerged at the top, with Vodafone Idea (Vi) following behind. The same is going to be with 5G.",
                newsHead:
                    "Jio and Airtel are Going to Have a Stiff Battle with 5G",
                newsUrl:
                    "https://telecomtalk.info/jio-and-airtel-are-going-to-have/691151/");
          }),
    );
  }
}
