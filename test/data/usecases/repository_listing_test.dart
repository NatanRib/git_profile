import 'package:flutter_test/flutter_test.dart';
import 'package:git_profile/data/http/http_client.dart';
import 'package:git_profile/data/usecases/repositories_listing.dart';
import 'package:git_profile/domain/entities/repository.dart';
import 'package:git_profile/domain/entities/user_profile.dart';
import 'package:git_profile/domain/usecases/repositories_listing.dart';
import 'package:git_profile/infra/http_client.dart';
import 'package:mocktail/mocktail.dart';

import '../../utils/test_objects.dart';

class HttpClientSpy extends Mock implements HttpClient {}

void main() {
  test("Should call getRepositories method from httpClient", () {
    HttpClient httpClient = HttpClientSpy();
    RepositoriesListing systemUnderTest = RepositoriesListingImpl(httpClient: httpClient);
    UserProfile userTest = UserProfile(
        name: "teste",
        login: "teste",
        bio: "teste",
        company: "teste",
        reposUrl: "teste",
        location: "teste",
        email: "teste",
        twitter: "teste",
        followers: 2,
        following: 2);

    when(()=> httpClient.getRepositoriesFromUser(userTest))
        .thenAnswer((_) async => listOfRepositoriesTest);

    systemUnderTest.getOrderedRepositories(userTest);

    verify(()=> httpClient.getRepositoriesFromUser(userTest)).called(1);
  });
}
