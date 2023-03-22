import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:video_call_chat_app/common/services/services.dart';
import 'package:video_call_chat_app/common/store/store.dart';

class Global {
  static Future init() async {
    WidgetsFlutterBinding.ensureInitialized();

    // Loading our storage file
    await Get.putAsync<StorageService>(() => StorageService().init());

    //Inject UserStore controller when app boots up
    Get.put<UserStore>(UserStore());
  }
}