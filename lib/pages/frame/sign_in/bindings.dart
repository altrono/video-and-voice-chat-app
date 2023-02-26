import 'package:get/get.dart';
import 'package:video_call_chat_app/pages/frame/sign_in/controller.dart';

class SignInBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SignInController>(() => SignInController());
  }
}