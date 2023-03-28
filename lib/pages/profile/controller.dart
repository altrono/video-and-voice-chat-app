import 'package:get/get.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:video_call_chat_app/common/store/store.dart';
import 'package:video_call_chat_app/pages/profile/state.dart';

class ProfileController extends GetxController {
  ProfileController();

  final state = ProfileState();

  Future<void> goLogout() async {
    await GoogleSignIn().signOut();
    await UserStore.to.onLogout();
  }


}