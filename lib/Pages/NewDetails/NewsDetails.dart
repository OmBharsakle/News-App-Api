import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import 'package:news_app/Controller/NewsController.dart';
import 'package:news_app/Model/NewsModel.dart';

class NewsDetailsPage extends StatelessWidget {
  final NewsModel news;
  const NewsDetailsPage({super.key, required this.news});

  @override
  Widget build(BuildContext context) {
    NewsController newsController = Get.put(NewsController());
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Row(
                  children: [
                    InkWell(
                      onTap: () {
                        Get.back();
                      },
                      child: Container(
                        child: const Row(
                          children: [
                            Icon(Icons.arrow_back_ios_new),
                            Text("Back"),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
                const SizedBox(height: 30),
                Container(
                  // height: 330,
                  decoration: BoxDecoration(
                    // color: Colors.red,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Row(
                    children: [
                      Expanded(
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Image.network(
                            news.urlToImage ??
                                "https://technometrics.net/wp-content/uploads/2020/11/loading-icon-animated-gif-19-1.gif",
                            fit: BoxFit.cover,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                const SizedBox(height: 20),
                Text(
                  news.title!,
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 10),
                Row(
                  children: [
                    Text(
                      "${news.author} * ${news.publishedAt}",
                      style: Theme.of(context).textTheme.labelSmall,
                    )
                  ],
                ),
                const SizedBox(height: 10),
                Row(
                  children: [
                    CircleAvatar(
                      radius: 15,
                      backgroundColor: Colors.red,
                      child: Text(
                        news.author![0],
                        style: const TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    const SizedBox(width: 10),
                    Text(
                      news.author!,
                      style: TextStyle(
                          fontSize: 18,
                          color:
                              Theme.of(context).colorScheme.secondaryContainer),
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                // Container(
                //   decoration: BoxDecoration(
                //     color: Theme.of(context).colorScheme.primaryContainer,
                //     borderRadius: BorderRadius.circular(10),
                //   ),
                //   // height: 30,
                //   child: Row(
                //     children: [
                //       // Obx(
                //       //   () => newsController.isSpeeking.value
                //       //       ? Divider()
                //       //   // IconButton(
                //       //   //         onPressed: () {
                //       //   //           newsController.stop();
                //       //   //         },
                //       //   //         icon: Icon(
                //       //   //           Icons.stop,
                //       //   //           size: 50,
                //       //   //         ),
                //       //   //       )
                //       //       : IconButton(
                //       //           onPressed: () {
                //       //             newsController.speak(
                //       //                 news.description ?? "No Description");
                //       //           },
                //       //           icon: Icon(
                //       //             Icons.play_arrow_rounded,
                //       //             size: 50,
                //       //           ),
                //       //         ),
                //       // ),
                //       // Expanded(
                //       //     child: Obx(
                //       //   () => Lottie.asset(repeat: true,
                //       //     'Assets/Animation/wave.json',
                //       //     height: 70,
                //       //     animate: newsController.isSpeeking.value,
                //       //   ),
                //       // ))
                //
                //     ],
                //   ),
                // ),
                Divider(),
                const SizedBox(height: 20),
                Row(
                  children: [
                    Flexible(
                      child: Text(
                        news.description ?? "No Description",
                        style: TextStyle(
                            fontSize: 18,
                            color: Theme.of(context)
                                .colorScheme
                                .secondaryContainer),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
