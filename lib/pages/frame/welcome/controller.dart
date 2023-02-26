import 'package:get/get.dart';
import 'package:video_call_chat_app/pages/frame/welcome/state.dart';

class WelcomeController extends GetxController {
  WelcomeController();
  final title = "Chatty .";
  final state = WelcomeState();

  @override
  void onReady() {
    super.onReady();
    print('Welcome controller');
  }
}