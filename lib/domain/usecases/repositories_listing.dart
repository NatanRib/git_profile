import 'package:git_profile/domain/entities/repository.dart';
import 'package:git_profile/domain/entities/user_profile.dart';

abstract class RepositoriesListing{
  Future<List<Repository>> getOrderedRepositories(UserProfile user);
} 