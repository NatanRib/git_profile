class Repository {
  final String name;
  final String description;
  final DateTime created;
  final DateTime updated;
  final String langague;
  final int whatcherCount;
  final int stargazersCount;
  
  Repository({
    required this.name,
    required this.description,
    required this.created,
    required this.updated,
    required this.langague,
    required this.whatcherCount,
    required this.stargazersCount,
  });
}
