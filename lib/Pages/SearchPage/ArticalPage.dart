import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:news_app/Controller/NewsController.dart';
import 'package:news_app/Pages/NewDetails/NewsDetails.dart';

import '../HomePage/Widgets/NewsTile.dart';
import 'Widgets/SearchWidget.dart';

class ArticalPage extends StatelessWidget {
  const ArticalPage({super.key});

  @override
  Widget build(BuildContext context) {
    NewsController newsController = Get.put(NewsController());
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            children: [
              SearchWidget(),
              Expanded(
                child: ListView(
                  children: [
                    SizedBox(height: 20),
                    Obx(
                      () => Column(
                        children: newsController.newsForYouList
                            .map(
                              (e) => NewsTile(
                                ontap: () {
                                  Get.to(NewsDetailsPage(news: e));
                                },
                                imageUrl: e.urlToImage ??
                                    "https://technometrics.net/wp-content/uploads/2020/11/loading-icon-animated-gif-19-1.gif",
                                title: e.title!,
                                author: e.author ?? "Unknown",
                                time: e.publishedAt!,
                              ),
                            )
                            .toList(),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
