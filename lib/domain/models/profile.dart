class Profile {
  final String location;
  final String name;
  final String profileImage;

  Profile({required this.location, required this.name, required this.profileImage});

  factory Profile.fromJson(Map<String, dynamic> json) {
    return Profile(
      location: json['location'],
      name: json['name'],
      profileImage: json['profileImage'],
    );
  }

  // The getter should return the actual image URL.
  String get imageUrl => profileImage;
}
