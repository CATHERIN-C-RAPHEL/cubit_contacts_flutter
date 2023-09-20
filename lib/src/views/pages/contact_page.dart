import 'package:demo_app3/src/controler/records_controller.dart';
import 'package:demo_app3/src/model/record.dart';
import 'package:demo_app3/src/views/widgets/contact_list_item.dart';
import 'package:flutter/material.dart';

class ContactPage extends StatefulWidget {
  const ContactPage({super.key});

  @override
  State<ContactPage> createState() => _ContactPageState();
}

class _ContactPageState extends State<ContactPage> {
  List<Records> records = [];

  @override
  void initState() {
    getData();
    super.initState();
  }

  void getData() {
    RecordsController controller = RecordsController();
    controller.getData().then((value) {
      setState(() {
        records = value;
      });
      
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child:
              ListView.builder(
                itemCount: records.length,
                itemBuilder: (BuildContext ctx, int index) {
                return ContactList(records: records[index]);
              })),
    );
  }
}
