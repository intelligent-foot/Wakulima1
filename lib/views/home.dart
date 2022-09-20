import 'package:flutter/material.dart';
import 'package:wakulima1/views/adminManager.dart';
import 'package:wakulima1/views/signIn.dart';
import 'package:wakulima1/views/bottom.dart';
import 'package:wakulima1/views/adminManager.dart';
import 'package:wakulima1/views/admin.dart';
import 'package:wakulima1/views/records.dart';
import 'package:wakulima1/views/vet.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  Widget userName({String? name}) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.white,
          boxShadow: [
            BoxShadow(color: Colors.green, spreadRadius: 3),
          ],
        ),
        height: 200.0,
        child: Card(
          elevation: 10,
          child: Stack(
            children: <Widget>[
              Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    colorFilter: new ColorFilter.mode(
                        Colors.black.withOpacity(0.4), BlendMode.dstATop),
                    image: new AssetImage(
                      "assets/images/c1.jpg",
                    ),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Center(
                  child: Text(
                'Welcome $name',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              )),
            ],
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: Drawer(
          child: Column(
            children: <Widget>[
              AppBar(
                automaticallyImplyLeading: false,
                title: Text('Choose'),
              ),
              ListTile(
                  title: Text('Logout'),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: ((context) => SignInScreen())));
                  }),
            ],
          ),
        ),
        appBar: AppBar(
          title: Text("Wakulima"),
        ),
        body: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                colorFilter: new ColorFilter.mode(
                    Colors.black.withOpacity(1), BlendMode.dstATop),
                image: AssetImage("assets/images/c2.jpg"),
                fit: BoxFit.cover,
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Container(
                  padding: EdgeInsets.all(10),
                  child: GridView.count(
                    shrinkWrap: true,
                    crossAxisCount: 2,
                    children: <Widget>[
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => Admin(),
                              ));
                        },
                        child: Card(
                            elevation: 10,
                            child: Center(
                                child: Text(
                              'Dairy',
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            ))),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => AdminManager()));
                        },
                        child: Card(
                          elevation: 10,
                          child: Center(
                              child: Text(
                            'Manager',
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          )),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: ((context) => Records())));
                        },
                        child: Card(
                          elevation: 10,
                          child: Center(
                              child: Text(
                            'Dairy Records',
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          )),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Vets()));
                        },
                        child: Card(
                          elevation: 10,
                          child: Center(
                              child: Text(
                            'Veterinary',
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          )),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 50.0,
                ),
              ],
            )));
  }

  onPressed() {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => SignInScreen()));
  }
}
