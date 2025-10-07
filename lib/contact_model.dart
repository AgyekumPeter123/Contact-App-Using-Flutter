// To parse this JSON data, do
//
//     final welcome = welcomeFromJson(jsonString);

import 'dart:convert';

Contact contactFromJson(String str) => Contact.fromJson(json.decode(str));

String contactToJson(Contact data) => json.encode(data.toJson());

class Contact {
  String name;
  String phone;
  String email;
  String region;
  String country;

  Contact({
    required this.name,
    required this.phone,
    required this.email,
    required this.region,
    required this.country,
  });

  factory Contact.fromJson(Map<String, dynamic> json) => Contact(
    name: json["name"],
    phone: json["phone"],
    email: json["email"],
    region: json["region"],
    country: json["country"],
  );

  Map<String, dynamic> toJson() => {
    "name": name,
    "phone": phone,
    "email": email,
    "region": region,
    "country": country,
  };
}
