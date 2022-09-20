import 'package:flutter/material.dart';

class MilkRecords extends StatefulWidget {
  String email;
  int farmerId;
  String name;
  MilkRecords({required this.email, required this.farmerId, required this.name});
  

  @override
  State<MilkRecords> createState() => _MilkRecordsState();
}

class _MilkRecordsState extends State<MilkRecords> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
