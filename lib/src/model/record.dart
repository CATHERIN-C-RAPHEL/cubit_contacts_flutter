import 'package:flutter/material.dart';

class Records {
  final String name;
  final address;
  final contact;
  final photo;
  final url;

  const Records(
      {required this.name,
      required this.address,
      required this.contact,
      required this.photo,
      required this.url
      });

  factory Records.fromJSON(Map<String, dynamic> json) {
    return Records(
        name: json['name'],
        address: json['address'],
        contact: json['contact'],
        photo: json['photo'],
        url: json['url']);

        
  }
}
