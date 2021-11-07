import 'package:git_profile/domain/entities/repository.dart';

class RepositoryModel extends Repository {
  RepositoryModel(
      {required name,
      required description,
      required created,
      required updated,
      required langague,
      required whatcherCount,
      required stargazersCount})
      : super(
            name: name,
            description: description,
            created: created,
            updated: updated,
            langague: langague,
            whatcherCount: whatcherCount,
            stargazersCount: stargazersCount);

  factory RepositoryModel.fromJson(Map<String, dynamic> json) =>
      RepositoryModel(
          name: json['name'],
          description: json['description'],
          created: DateTime.parse(json['created_at']),
          updated: DateTime.parse(json['updated_at']),
          langague: json['language'],
          whatcherCount: json['watchers_count'],
          stargazersCount: json['stargazers_count']
      );
}
