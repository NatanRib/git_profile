import 'package:get/get.dart';
import 'package:git_profile/domain/entities/user_profile.dart';

class UserProfileController extends GetxController{
  final user = null.obs.value;

  Future<UserProfile> searchUserProfile(String)async{
    UserProfile u = await searchUserProfile(String);
    return u;
  }
}