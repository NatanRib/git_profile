import 'package:flutter_test/flutter_test.dart';
import 'package:git_profile/data/exceptions/user_not_foud_exception.dart';
import 'package:git_profile/data/http/http_client.dart';
import 'package:git_profile/data/models/user_profile.dart';
import 'package:git_profile/domain/entities/user_profile.dart';
import 'package:git_profile/infra/http_client.dart';

import '../utils/test_objects.dart';

void main() {

  test("Should throw a User not found Exception when the query dont return a user profile", () async {
    //arrange
    HttpClient httpClient = HttpClientImpl();
    String userNameNotFounded = 'asd7bastcn';

    //assert
    expect(httpClient.getUserProfile(userNameNotFounded), throwsA(isA<UserNotFoundException>()));
  });

  test("Should get user profile json when the query return a user profile from API", () async {
    //arrange
    HttpClient httpClient = HttpClientImpl();
    String userNameFounded = 'natanRib';

    //act
    Map<String,dynamic> userProfileJson = await httpClient.getUserProfile(userNameFounded);
  
    //assert
    expect(userProfileJson, isA<Map<String,dynamic>>());
  });

  test("Should get user profile reporitories json when the user was founded", () async {
    //arrange
    HttpClient httpClient = HttpClientImpl();
    UserProfile userFounded = UserProfileModel.fromJson(correctAPIReturn);

    //act
    List<Map<String,dynamic>> userRepositoriesJson = await httpClient.getRepositoriesFromUser(userFounded);
  
    //assert
    expect(userRepositoriesJson, isA<List<Map<String,dynamic>>>());
  });
}