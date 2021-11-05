import 'package:flutter_test/flutter_test.dart';
import 'package:git_profile/data/exceptions/user_not_foud_exception.dart';
import 'package:git_profile/data/http/http_client.dart';
import 'package:git_profile/data/usecases/user_profile_search_implementation.dart';
import 'package:git_profile/domain/usecases/user_profile_search.dart';
import 'package:git_profile/utils/api.dart';

import 'package:mocktail/mocktail.dart';

class HttpClientSpy extends Mock implements HttpClient {}

void main() {
  late HttpClient httpClient;
  late UserProfileSearch systemUnderTest;
  
  setUp((){
    httpClient = HttpClientSpy();
    systemUnderTest =
        UserProfileSearchImpl(httpClient: httpClient);
  });

  test(
      "Should Call get profile method of httpClient from search profile usecase",
      () async {
    //arrange
    String nameOfUserProfileTest = "natanRib";
    when(() => httpClient.getUserProfile(nameOfUserProfileTest))
        .thenAnswer((_) async => correctAPIReturn);

    //act
    await systemUnderTest(name: "natanRib");

    //assert
    verify(() => httpClient.getUserProfile(nameOfUserProfileTest)).called(1);
  });

  test("Should throw a User not found exception from http client when user profile not founded", (){
    //arrange
    String nameOfUserProfileNotFounded = 'akshc34g99';
    when(()=> httpClient.getUserProfile(nameOfUserProfileNotFounded)).thenThrow(UserNotFoundException());

    //assert
    expect(systemUnderTest.call(name: nameOfUserProfileNotFounded), throwsA(isA<UserNotFoundException>()));
  });
}
