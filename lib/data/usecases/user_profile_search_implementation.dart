import 'package:git_profile/data/exceptions/user_not_foud_exception.dart';
import 'package:git_profile/data/http/http_client.dart';
import 'package:git_profile/data/models/user_profile.dart';
import 'package:git_profile/domain/entities/user_profile.dart';
import 'package:git_profile/domain/usecases/user_profile_search.dart';

class UserProfileSearchImpl implements UserProfileSearch{
  HttpClient httpClient;

  UserProfileSearchImpl({required this.httpClient});

  @override
  Future<UserProfile> call({required String name}) async {
    Map<String,dynamic> result = await httpClient.getUserProfile(name);
    if (result.isEmpty){
      throw UserNotFoundException();
    }
    return UserProfileModel.fromJson(result);
  }
}