import 'package:git_profile/domain/entities/user_profile.dart';

abstract class HttpClient{
  Future<Map<String, dynamic>> getUserProfile(String name);
  
  Future<List<Map<String, dynamic>>> getRepositoriesFromUser(UserProfile user);
}