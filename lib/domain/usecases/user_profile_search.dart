import 'package:git_profile/domain/entities/user_profile.dart';

abstract class UserProfileSearch {

  Future<UserProfile> call({required String name});
} 