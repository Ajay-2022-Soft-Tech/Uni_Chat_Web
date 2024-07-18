import 'package:get/get.dart';
import 'dart:html' as html;
class AppController extends GetxController{

  String appUrl = "https://github.com/Ajay-2022-Soft-Tech/UNICHAT/releases/download/1.1.0/UniChat.1.1.0.apk";

  String apkName = "UniChat.1.1.0.apk";

  Future downloadApk() async {
    try {
      final anchor = html.AnchorElement (href: appUrl)..download = apkName;
      html.document.body!.children.add(anchor);
      anchor.click();
      html.document.body!.children.remove(anchor);
    }
    catch (e) {
      print(e);
    }
  }
}