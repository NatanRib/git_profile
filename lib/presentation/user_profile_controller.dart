import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:git_profile/data/exceptions/user_not_foud_exception.dart';
import 'package:git_profile/data/http/http_client.dart';
import 'package:git_profile/data/usecases/user_profile_search_implementation.dart';
import 'package:git_profile/domain/entities/user_profile.dart';
import 'package:git_profile/domain/usecases/user_profile_search.dart';
import 'package:git_profile/infra/http_client.dart';
import 'package:git_profile/ui/views/user_profile_page.dart';
import 'package:git_profile/ui/widgets/custom_snackbar.dart';

class UserProfileController extends GetxController {
  final user = UserProfile(
          name: '',
          bio: '',
          company: '',
          email: '',
          location: '',
          twitter: '',
          login: '',
          reposUrl: '',
          imageUrl: '',
          followers: 0,
          following: 0)
      .obs;
  final searchText = ''.obs;

  late HttpClient httpClient;
  late UserProfileSearch userProfileSearch;

  UserProfileController() {
    httpClient = HttpClientImpl();
    userProfileSearch = UserProfileSearchImpl(httpClient: httpClient);
  }

  void searchUserProfile() async {
    UserProfile? u = await userProfileSearch(name: searchText.value)
        .onError((error, stackTrace) {
      Get.showSnackbar(CustomSnackBar(message: 'User not founded!'));
      throw UserNotFoundException();
    });
    user.value = u;
    Get.to(const UserProfilePage());
  }

  changeSearchText(String text) {
    searchText.value = text;
  }
}
