import 'package:flutter_test/flutter_test.dart';
import 'package:git_profile/domain/entities/user_profile.dart';
import 'package:git_profile/domain/usecases/user_profile_search.dart';
import 'package:mockito/mockito.dart';

void main() {
  
  test("Should Call get profile method of httpClient from search profile usecase", (){
    //arrange
    when(httpClient.getProfile(any())).thenReturn(UserProfile());
    
    //act
    UserProfileSearch systemUnderTest = UserProfileSearch();
    UserProfile userProfileTest = systemUnderTest(name: "natanRib"); 
    
    //assert
    expect(actual, matcher)
  });
}