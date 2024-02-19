class Contact {
  String name;
  String email;

  Contact({required this.name, required this.email});

  Map<String, dynamic> toMap() {
    return {"name": name, "email": email};
  }

  factory Contact.fromMap(Map<String, dynamic> json) {
    return Contact(name: json["name"], email: json["email"]);
  }
}
