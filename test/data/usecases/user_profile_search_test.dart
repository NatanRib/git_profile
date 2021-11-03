import 'package:flutter_test/flutter_test.dart';

import 'package:git_profile/data/http/http_client.dart';
import 'package:git_profile/data/usecases/user_profile_search.dart';
import 'package:git_profile/domain/entities/user_profile.dart';
import 'package:git_profile/domain/usecases/user_profile_search.dart';

import 'package:mocktail/mocktail.dart';

class HttpClientSpy extends Mock implements HttpClient{}

void main() {
  
  test("Should Call get profile method of httpClient from search profile usecase", () async{
    //arrange
    String nameOfProfileTest = "natanRib"; 
    Map<String,dynamic> returnOfApi = {"teste" : "teste"};
    HttpClient httpClient = HttpClientSpy();
    UserProfileSearch systemUnderTest = UserProfileSearchImpl();
    when(() => httpClient.getUserProfile(nameOfProfileTest)).thenAnswer((_) async => returnOfApi);

    //act
    
    UserProfile userProfileTest = await systemUnderTest(name: "natanRib"); 
    
    //assert
    verify(() => httpClient.getUserProfile(nameOfProfileTest)).called(1);
  });
}