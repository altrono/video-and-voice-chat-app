import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:video_call_chat_app/common/services/services.dart';
import 'package:video_call_chat_app/common/store/store.dart';

import 'firebase_options.dart';

class Global {
  static Future init() async {
    WidgetsFlutterBinding.ensureInitialized();

    await Firebase.initializeApp(
      options: DefaultFirebaseOptions.currentPlatform
    );

    // Loading our storage file
    await Get.putAsync<StorageService>(() => StorageService().init());

    //Inject UserStore controller when app boots up
    Get.put<UserStore>(UserStore());
  }
}