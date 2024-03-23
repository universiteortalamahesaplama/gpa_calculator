class University {
  final String name;
  final String city;
  final String email;

  University({
    required this.name,
    required this.city,
    required this.email,
  });

  factory University.fromJson(Map<String, dynamic> json) {
    return University(
      name: json['name'],
      city: json['city'],
      email: json['email'],
    );
  }
}
