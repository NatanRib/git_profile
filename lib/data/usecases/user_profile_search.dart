import 'package:git_profile/domain/entities/user_profile.dart';
import 'package:git_profile/domain/usecases/user_profile_search.dart';

class UserProfileSearchImpl implements UserProfileSearch{
  @override
  Future<UserProfile> call({required String name}) {
    // TODO: implement call
    throw UnimplementedError();
  }
}