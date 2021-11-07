import 'package:git_profile/data/http/http_client.dart';
import 'package:git_profile/data/models/repository.dart';
import 'package:git_profile/domain/entities/user_profile.dart';
import 'package:git_profile/domain/entities/repository.dart';
import 'package:git_profile/domain/usecases/repositories_listing.dart';

class RepositoriesListingImpl implements RepositoriesListing {
  HttpClient httpClient;

  RepositoriesListingImpl({required this.httpClient});

  @override
  Future<List<Repository>> getOrderedRepositories(UserProfile user) async {
    List<RepositoryModel> list = [];
    httpClient
        .getRepositoriesFromUser(user)
        .then((value) => value.forEach((element) {
              list.add(RepositoryModel.fromJson(element));
            }));
    list.sort((a,b)=> a.stargazersCount.compareTo(b.stargazersCount));
    return list;
  }
}
