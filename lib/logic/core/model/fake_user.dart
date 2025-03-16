class FakeUser {
  FakeUser({
    required this.username,
    required this.firstname,
    required this.lastname,
    required this.email,
    required this.photo,
  });

  final String username;
  final String firstname;
  final String lastname;
  final String email;
  final String photo;

  factory FakeUser.fromJson(Map<String, dynamic> json) {
    return FakeUser(
      username: json['login']['username'] ?? 'Unknown',
      firstname: json['name']['first'] ?? 'Unknown',
      lastname: json['name']['last'] ?? 'Unknown',
      email: json['email'] ?? 'Unknown',
      photo: json['picture']['large'] ?? 'Unknown',
    );
  }
}