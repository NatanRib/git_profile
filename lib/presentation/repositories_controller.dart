import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:git_profile/data/exceptions/user_not_foud_exception.dart';
import 'package:git_profile/data/http/http_client.dart';
import 'package:git_profile/data/usecases/repositories_listing.dart';
import 'package:git_profile/data/usecases/user_profile_search_implementation.dart';
import 'package:git_profile/domain/entities/repository.dart';
import 'package:git_profile/domain/entities/user_profile.dart';
import 'package:git_profile/domain/usecases/repositories_listing.dart';
import 'package:git_profile/domain/usecases/user_profile_search.dart';
import 'package:git_profile/infra/http_client.dart';
import 'package:git_profile/ui/views/repositories_listing_page.dart';
import 'package:git_profile/ui/views/user_profile_page.dart';
import 'package:git_profile/ui/widgets/custom_snackbar.dart';

class RepositoriesController extends GetxController {
  final List<Repository> repositories = <Repository>[].obs;

  late HttpClient httpClient;
  late RepositoriesListing repositoriesListing;

  RepositoriesController() {
    httpClient = HttpClientImpl();
    repositoriesListing = RepositoriesListingImpl(httpClient: httpClient);
  }

  void listRepositories(UserProfile user) async {
    List<Repository> u = await repositoriesListing(user: user)
        .onError((error, stackTrace) {
      Get.showSnackbar(CustomSnackBar(message: 'this user dont have any repository!'));
      throw UserNotFoundException();
    });
    u.forEach((element) {repositories.add(element);});
    Get.to(const RepositoriesListingPage());
  }
}
