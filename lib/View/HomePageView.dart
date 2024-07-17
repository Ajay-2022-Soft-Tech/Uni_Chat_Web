import 'package:flutter/material.dart';

import '../Config/ResponsiveLayout.dart';
import '../pages/MobileHomePage.dart';
import '../pages/WebHomePage.dart';

class HomePageView extends StatelessWidget {
  const HomePageView({super.key});

  @override
  Widget build(BuildContext context) {
    return const ResponsiveLayout(
      mobile: MobileHomePage(),
      Web: WebHomePage(),
    );
  }
}
