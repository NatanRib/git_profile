import 'package:git_profile/data/exceptions/Http_client_exception.dart';
import 'package:git_profile/data/exceptions/user_not_foud_exception.dart';
import 'package:git_profile/data/http/http_client.dart';

import 'package:dio/dio.dart';
import 'package:git_profile/domain/entities/user_profile.dart';
import 'package:git_profile/utils/api_urls.dart';

class HttpClientImpl implements HttpClient{
  
  @override
  Future<Map<String, dynamic>> getUserProfile(String name)async{
    Map<String, dynamic> result = {}; 
    try {
      await Dio().get(urlApiUserProfileSearch+name).then((value) {
        //value.statusCode != 200
         result = value.data; // :
          // throw UserNotFoundException();
      });
      print(result);
    }catch(e){
      print(e);
      throw UserNotFoundException();
    }
    return result;
  }

  @override
  Future<List<Map<String, dynamic>>> getRepositoriesFromUser(UserProfile user) {
    // TODO: implement getRepositoriesFromUser
    throw UnimplementedError();
  }
  
}