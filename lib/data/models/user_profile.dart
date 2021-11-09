import 'package:git_profile/domain/entities/user_profile.dart';

class UserProfileModel extends UserProfile{
  
  UserProfileModel({
    required name,
    required login,
    required bio,
    required company,
    required reposUrl,
    required imageUrl,
    required location,
    required email,
    required twitter,
    required followers,
    required following
  }) : super(
    name: name,
    login: login,
    bio: bio,
    company: company,
    reposUrl: reposUrl,
    imageUrl: imageUrl,
    location: location,
    email: email,
    twitter: twitter,
    followers: followers,
    following: following
  );
  
  factory UserProfileModel.fromJson(Map<String,dynamic> json){
    return UserProfileModel(
      name: json['name'],
      login: json['login'],
      bio: json['bio'],
      company: json['company'], 
      reposUrl: json['repos_url'],
      imageUrl: json['avatar_url'], 
      location: json['location'], 
      email: json['email'], 
      twitter: json['twitter'], 
      followers: json['followers'], 
      following: json['following']
    );
  }

  Map<String,dynamic> toJson(){
    return {
      'name': name,
      'login': login,
      'bio': bio,
      'company': company,
      'repos_url': reposUrl,
      'location': location,
      'email': email,
      'twitter': twitter,
      'followers': followers,
      'following': following 
    };
  }
}