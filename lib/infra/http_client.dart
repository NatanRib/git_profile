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
    
    await Dio().get(urlApiUserProfileSearch+name).then((value) {
      result = value.data; // :
    }).onError((error, stackTrace) {
      print('Dio error: '+ error.toString());
      throw UserNotFoundException();
    });
      
    return result;
  }

  @override
  Future<List<Map<String, dynamic>>> getRepositoriesFromUser(UserProfile user) async {
    List<Map<String, dynamic>> result= []; 
    
    await Dio().get(user.reposUrl).then((value) {
      //value.statusCode != 200
      //result = value.data; // :
      value.data.forEach((element){result.add(element);});
      // throw UserNotFoundException();
    }).onError((error, stackTrace){
      print('Dio error:' + error.toString());
    throw HttpClientException();
    });
    
    return result; 
  }
  
}