import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:sampark_web/Widgets/Devider.dart';
import 'package:sampark_web/Widgets/Maininfo.dart';
import 'package:sampark_web/Widgets/ScreenShort.dart';
import 'package:sampark_web/Widgets/WebFeaturesWidget.dart';

class WebHomePage extends StatelessWidget {
  const WebHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final w = MediaQuery.of(context).size.width;
    final h = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Image.asset(
            "assets/photos/logo.png",
            width: 30,
          ),
        ),
        title: Text(
          'SAMAPRK',
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [
          ElevatedButton.icon(
            onPressed: () {},
            icon: Icon(Icons.download),
            label: Text(
              'Donwload',
              style: TextStyle(
                color: Theme.of(context).colorScheme.onBackground,
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
              MainInfo(),
              SizedBox(height: 40),
              MyDevider(),
              SizedBox(height: 40),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Features",
                    style: TextStyle(
                        fontSize: 40,
                        fontWeight: FontWeight.bold,
                        color: Theme.of(context).colorScheme.onBackground),
                  ),
                ],
              ),
              SizedBox(height: 40),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  WebFeatureTile(
                      icon: Icons.info,
                      title: "Easy to use",
                      description:
                          "Sampark App is A Easy to use app where you can connect with each other"),
                  WebFeatureTile(
                      icon: Icons.call,
                      title: "Chat With Friends",
                      description:
                          "Sampark App is A best for comunicating with friend anf family")
                ],
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  WebFeatureTile(
                      icon: Icons.video_call,
                      title: "One to One Audio Call",
                      description: "One to One video Call"),
                  WebFeatureTile(
                      icon: Icons.group,
                      title: "Group Chat",
                      description:
                          "Sampark App is A Easy to use app where you can connect with each other")
                ],
              ),
              SizedBox(height: 80),
              MyDevider(),
              SizedBox(height: 40),
              ScreenShortPage(),
              SizedBox(height: 60),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Made with ❤️ By Nitish kumar",
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
      ),
    );
  }
}
