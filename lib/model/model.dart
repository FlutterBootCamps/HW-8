class ContactInfo {
  final String name;
  final String email;

  ContactInfo({required this.name, required this.email});

  //from map
  factory ContactInfo.fromMap(Map<String, dynamic> map) {
    return ContactInfo(name: map["name"], email: map["email"]);
  }

  toMap() {
    return {"name": name, "email": email};
  }
}
