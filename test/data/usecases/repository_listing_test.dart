import 'dart:math';

import 'package:flutter_test/flutter_test.dart';
import 'package:git_profile/data/http/http_client.dart';
import 'package:git_profile/data/models/repository.dart';
import 'package:git_profile/data/usecases/repositories_listing.dart';
import 'package:git_profile/domain/entities/repository.dart';
import 'package:git_profile/domain/entities/user_profile.dart';
import 'package:git_profile/domain/usecases/repositories_listing.dart';
import 'package:git_profile/infra/http_client.dart';
import 'package:mocktail/mocktail.dart';

import '../../utils/test_objects.dart';

class HttpClientSpy extends Mock implements HttpClient {}

void main() {

  late HttpClient httpClient;
  late RepositoriesListing systemUnderTest;
  late UserProfile userTest;
  
  setUp(() {
    httpClient = HttpClientSpy();
    systemUnderTest = RepositoriesListingImpl(httpClient: httpClient);
    userTest = UserProfile(
        name: "teste",
        login: "teste",
        bio: "teste",
        company: "teste",
        reposUrl: "teste",
        imageUrl: 'teste',
        location: "teste",
        email: "teste",
        twitter: "teste",
        followers: 2,
        following: 2);
  });

  test("Should call getRepositories method from httpClient", () {
    //arrange
    when(() => httpClient.getRepositoriesFromUser(userTest))
        .thenAnswer((_) async => listOfJsonRepositoriesTest);

    //act
    systemUnderTest(user: userTest);

    //assert
    verify(() => httpClient.getRepositoriesFromUser(userTest)).called(1);
  });

  test("Should return a List of repositories from RepositoriesListing", ()async {
    //arrange
    when(() => httpClient.getRepositoriesFromUser(userTest))
        .thenAnswer((_) async => listOfJsonRepositoriesTest);

    //act
    final test = await systemUnderTest(user: userTest);

    //assert
    expect(test, isA<List<RepositoryModel>>());
  });
}
