import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:video_call_chat_app/common/services/services.dart';
import 'package:video_call_chat_app/common/store/store.dart';

class Global {
  static Future init() async {
    WidgetsFlutterBinding.ensureInitialized();
    await Get.putAsync<StorageService>(() => StorageService().init());
    Get.put<UserStore>(UserStore());
  }
}