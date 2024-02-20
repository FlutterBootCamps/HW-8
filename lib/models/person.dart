class Person {
  final String name;
  final String email;

  Person({required this.name, required this.email});

  factory Person.fromJson(Map json) {
    return Person(name: json['name'], email: json['email']);
  }

  toMap() {
    return {
      "name": name,
      "email": email,
    };
  }
}
