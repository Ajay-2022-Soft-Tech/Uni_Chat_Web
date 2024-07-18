import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:uni_chat_web/Config/AppController.dart';
import 'package:uni_chat_web/Widgets/ScreenShort.dart';
import '../Widgets/MainInfo.dart';
import '../Widgets/WebFeaturesWidget.dart';

class WebHomePage extends StatelessWidget {
  const WebHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    AppController appController = Get.put(AppController());

    final w = MediaQuery.of(context).size.width;
    final h = MediaQuery.of(context).size.height;
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
        padding: const EdgeInsets.all(40),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const MainInfo(),
              const SizedBox(height: 40),
              const Divider(),
              const SizedBox(height: 40),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Features",
                    style: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                      color: Theme.of(context).colorScheme.onBackground,
                      fontFamily: 'Montserrat',
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 40),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  WebFeatureTile(
                    icon: Icons.info,
                    title: "Easy to Use",
                    description: "UniChat App is an easy-to-use app where you can connect with each other.",
                  ),
                  WebFeatureTile(
                    icon: Icons.call,
                    title: "Chat with Friends",
                    description: "UniChat App is the best for communicating with friends and family.",
                  ),
                ],
              ),
              const SizedBox(height: 20),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  WebFeatureTile(
                    icon: Icons.video_call,
                    title: "One-to-One Audio Call",
                    description: "Enjoy one-to-one video calls with high quality.",
                  ),
                  WebFeatureTile(
                    icon: Icons.group,
                    title: "Group Chat",
                    description: "UniChat App allows you to connect with groups effortlessly.",
                  ),
                ],
              ),
              const SizedBox(height: 80),
              const Divider(),
              const SizedBox(height: 40),
              const ScreenshotPage(),
              const SizedBox(height: 60),
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Made with ❤️ by Ajay Kumar",
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.grey,
                      fontStyle: FontStyle.italic,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
