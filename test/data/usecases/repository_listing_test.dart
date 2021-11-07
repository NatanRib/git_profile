import 'package:flutter_test/flutter_test.dart';
import 'package:git_profile/data/http/http_client.dart';
import 'package:git_profile/domain/entities/repository.dart';
import 'package:git_profile/domain/entities/user_profile.dart';
import 'package:git_profile/infra/http_client.dart';
import 'package:mocktail/mocktail.dart';

class HttpClientSpy extends Mock implements HttpClient {}

void main() {
  test("Should call getRepositories method from httpClient", () {
    HttpClient httpClient = HttpClientSpy();
    RepositoryListing systemUnderTest = RepositoryListing(httpClient: client);
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

    when(httpClient.getRepositoriesFromUser())
        .thenAnswer((_) => listOfRepositoriesTest);

    systemUnderTest.getOrderedRepositories(userTest);

    verify(httpClient.getRepositoriesFromUser(UserTest)).called(1);
  });
}
