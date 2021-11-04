class UserProfile{
  
  String name;
  String login;
  String bio;
  String company;
  String reposUrl;
  String location;
  String email;
  String twitter;
  int followers;
  int following;

  UserProfile({
    required this.name,
    required this.login,
    required this.bio,
    required this.company,
    required this.reposUrl,
    required this.location,
    required this.email,
    required this.twitter,
    required this.followers,
    required this.following
    });
}