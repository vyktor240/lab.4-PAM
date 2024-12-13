class Barbershop {
  final String title;
  final String location;
  final String rating;
  final String image;

  Barbershop({required this.title, required this.location, required this.rating, required this.image});

  factory Barbershop.fromJson(Map<String, dynamic> json) {
    return Barbershop(
      title: json['title'],
      location: json['location'],
      rating: json['rating'],
      image: json['image'],
    );
  }
}
