import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:video_call_chat_app/common/routes/pages.dart';
import 'package:video_call_chat_app/common/style/style.dart';
import 'package:video_call_chat_app/glabal.dart';

Future<void> main() async {
  await Global.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(360, 780),
        builder: (context, child) => GetMaterialApp(
              debugShowCheckedModeBanner: false,
              title: 'Let\'s Chat',
              theme: AppTheme.light,
              initialRoute: AppPages.INITIAL,
              getPages: AppPages.routes,
          ),
        );
  }
}
