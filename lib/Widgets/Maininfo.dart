import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../Config/AppController.dart';

class MainInfo extends StatelessWidget {
  const MainInfo({super.key});

  @override
  Widget build(BuildContext context) {
    AppController appController = Get.put(AppController());

    final w = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Image.asset(
                      "assets/icons/app_icon.png",
                      width: 100,
                    ),
                    const SizedBox(width: 20),
                    const Text(
                      "Uni Chat",
                      style: TextStyle(
                        fontSize: 40,
                        fontWeight: FontWeight.bold,
                        color: Colors.deepPurple,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                Text(
                  "The Best App For Connecting with",
                  style: TextStyle(
                    fontSize: 36,
                    fontWeight: FontWeight.bold,
                    color: Theme.of(context).colorScheme.onBackground,
                  ),
                ),
                Text(
                  "Your Family and Friends.",
                  style: TextStyle(
                    fontSize: 36,
                    fontWeight: FontWeight.bold,
                    color: Theme.of(context).colorScheme.onBackground,
                  ),
                ),
                const SizedBox(height: 10),
                const Text(
                  "App version 0.0.1",
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w200,
                    color: Colors.green,
                  ),
                ),
                const SizedBox(height: 20),
                SizedBox(
                  width: 700,

                  child: Text(
                    "With this app, you can easily monitor all your financial transactions, including expenses and income. It is specifically created for students and large groups.",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      color: Theme.of(context).colorScheme.onBackground,
                    ),
                  ),
                ),
                const SizedBox(height: 30),
                Row(
                  children: [
                    Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 30,
                        vertical: 20,
                      ),
                      decoration: BoxDecoration(
                        gradient: const LinearGradient(
                          colors: [Colors.deepPurple, Colors.purpleAccent],
                        ),
                        boxShadow: const [
                          BoxShadow(
                            color: Colors.black26,
                            offset: Offset(0, 4),
                            blurRadius: 5,
                          ),
                        ],
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child:  InkWell(
                        onTap: (){
                          appController.downloadApk();

                        },
                        child: const Row(
                          children: [
                            Icon(
                              Icons.android,
                              size: 30,
                              color: Colors.white,
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
                    const SizedBox(width: 20),

                  ],
                ),
              ],
            ),
          ),
          Container(
            width: w / 2.6,
            height: w / 2.6,
            decoration: BoxDecoration(
              boxShadow: const [
                BoxShadow(
                  color: Colors.black12,
                  offset: Offset(0, 6),
                  blurRadius: 10,
                ),
              ],

              color: Theme.of(context).colorScheme.primary,
              image:  const DecorationImage(
                image: AssetImage("assets/photos/main.png"),
                fit: BoxFit.cover,

              ),
              shape: BoxShape.circle,
            ),
          ),
        ],
      ),
    );
  }
}
