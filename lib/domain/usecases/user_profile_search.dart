import 'package:git_profile/domain/entities/user_profile.dart';

abstract class UserSearch {

  Future<UserProfile> call({required String name});
} 