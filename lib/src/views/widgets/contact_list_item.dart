import 'package:demo_app3/src/model/record.dart';
import 'package:flutter/material.dart';

class ContactList extends StatelessWidget {
  const ContactList({super.key, required this.records});

  final Records records;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          leading: CircleAvatar(
            radius: 30,
            backgroundImage: NetworkImage(records.photo),
          ),
          title: Text(records.name),
          subtitle: Text(records.address),
          trailing: IconButton(onPressed: () {
          },
          icon: Icon(Icons.call),
          ),
        )
      ],
    );
  }
}