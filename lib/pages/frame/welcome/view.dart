import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:video_call_chat_app/common/style/color.dart';
import 'package:video_call_chat_app/common/values/colors.dart';
import 'package:video_call_chat_app/pages/frame/welcome/controller.dart';

class WelcomePage extends GetView<WelcomeController> {
  const WelcomePage({Key? key}) : super(key: key);

  Widget _buildPageHeadTitile(String title) {
    return Container(
      child: Text(
        title,
        style: const TextStyle(
          color: AppColors.primaryElementText,
          fontFamily: 'Montserrat',
          fontWeight: FontWeight.bold,
          fontSize: 45,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: _buildPageHeadTitile(controller.title),
      ),
    );
  }
}
