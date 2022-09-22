import 'package:flutter/material.dart';

class Users extends StatefulWidget {
  String userId;
  Users({required this.userId});

  @override
  State<Users> createState() => _UsersState();
}

class _UsersState extends State<Users> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(appBar: AppBar(title: Text('Farmers'),
      bottom: TabBar(tabs: [
        Tab(icon: Icon(Icons.people_outline),
        text: 'farmers',
        ),
        Tab(icon: Icon(Icons.search),
        text: 'search',
        ),
      ],
      ),
      ),
      body: TabBarView(children: [Farmer(), SearchFarmer()],
      ),
      ),
    );
  }
}

class Farmer extends StatefulWidget {
  const Farmer({super.key});

  @override
  State<Farmer> createState() => _FarmerState();
}

class _FarmerState extends State<Farmer> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
class SearchFarmer extends StatefulWidget {
  const SearchFarmer({super.key});

  @override
  State<SearchFarmer> createState() => _SearchFarmerState();
}

class _SearchFarmerState extends State<SearchFarmer> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
