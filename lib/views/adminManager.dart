import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class AdminManager extends StatefulWidget {
  const AdminManager({super.key});

  @override
  State<AdminManager> createState() => _AdminManagerState();
}

class _AdminManagerState extends State<AdminManager> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Admin page'),
      ),
    );
  }
}