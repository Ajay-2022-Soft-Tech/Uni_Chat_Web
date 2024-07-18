import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:uni_chat_web/Widgets/ScreenShort.dart';

import '../Config/AppController.dart';
import '../Widgets/Devider.dart';

class MobileHomePage extends StatelessWidget {
  const MobileHomePage({super.key});

  @override
  Widget build(BuildContext context) {

    AppController appController = Get.put(AppController());

    final w = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Image.asset(
            "assets/icons/app_icon.png",
            width: 50,
          ),
        ),
        title: const Text(
          'UniChat',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 24,
          ),

        ),
        actions: [
          ElevatedButton.icon(
            onPressed: () {
              appController.downloadApk();

            },
            icon: const Icon(Icons.download),
            label: const Text('Download'),
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.white,
              foregroundColor: Colors.deepPurple,
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              textStyle: const TextStyle(fontSize: 16),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
            ),
          )
        ],
      ),

      body: Padding(
        padding: const EdgeInsets.all(30),
        child: ListView(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Image.asset(
                      "assets/photos/logo.png",
                      width: 50,
                    ),
                    const SizedBox(width: 10),
                    Text(
                      "UniChat",
                      style: TextStyle(
                        fontSize: 40,
                        fontWeight: FontWeight.bold,
                        color: Theme.of(context).colorScheme.onBackground,
                      ),
                    ),
                  ],
                ),
                Text(
                  "The Best App For Connecting with",
                  style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                    color: Theme.of(context).colorScheme.onBackground,
                  ),
                ),
                Text(
                  "Your Friends.",
                  style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                    color: Theme.of(context).colorScheme.onBackground,
                  ),
                ),
                const Text(
                  "App version 1.0",
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w200,
                    color: Colors.green,
                  ),
                ),
                SizedBox(
                  width: 700,
                  child: Text(
                    "You can track all your transaction expenses and incomes with the helping of this app, this app is spacialy made for student and a large group of member management",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      color: Theme.of(context).colorScheme.onBackground,
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                Row(
                  children: [
                    Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 30,
                        vertical: 20,
                      ),
                      decoration: BoxDecoration(
                        color: Theme.of(context).colorScheme.primary,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: InkWell(
                        onTap: (){
                          appController.downloadApk();

                        },
                        child: const Row(
                          children: [
                            Icon(
                              Icons.android,
                              size: 30,
                            ),
                            SizedBox(width: 10),
                            Text(
                              "Download App",
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
            SizedBox(height: 40),
            Container(
              width: w / 1.2,
              height: w / 1.2,
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.primary,
                image: DecorationImage(
                  image: AssetImage("assets/photos/main.png"),
                ),
                shape: BoxShape.circle,
              ),
            ),
            const SizedBox(height: 40),
            const SizedBox(height: 40),
            const MyDivider(),
            const ScreenshotPage(),
            const SizedBox(height: 40),
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Made with ❤️ By Ajay kumar",
                  style: TextStyle(
                    fontSize: 10,
                    color: Colors.grey,
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
