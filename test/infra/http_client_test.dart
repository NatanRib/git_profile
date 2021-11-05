import 'package:flutter_test/flutter_test.dart';
import 'package:git_profile/data/http/http_client.dart';
import 'package:git_profile/infra/http_client.dart';

void main() {

  test("Should throw a User not found Exception when the query dont return a user profile", (){
    //arrange
    HttpClient httpClient = HttpClientImpl();
    String userNameNotFounded = 'asd7bastcn';

    //act
    

    //assert
  });
}