import 'package:flutter/material.dart';
import 'package:wakulima1/views/otherLoans.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
class manager extends StatefulWidget {
  const manager({super.key});

  @override
  State<manager> createState() => _managerState();
}

class _managerState extends State<manager> {

  Widget recordList() {
    return Container();
  }
  Widget loanList(){
    return Padding(padding: const EdgeInsets.all(5.0),
    child: Container(
      height: 60.0,
      child: TextButton(style:ButtonStyle(foregroundColor: MaterialStateProperty.all<Color>(Colors.blueAccent),
      ) ,
      child: Text('Approve'),
      onPressed: () {
        
      },),
      
      )
    );
  }
  Widget loanList2(){
    return Padding(padding: const EdgeInsets.all(5.0),
    child: Container(
      
      height: 60.0,
      child:TextButton(
        style: ButtonStyle(
          foregroundColor: MaterialStateProperty.all<Color>(Colors.redAccent),
        ) ,
        child: Text('Deny'),
        onPressed:(() {
          
        }
        ) ,
        
      ) ,
    ),
    
    );
  }
  Widget ClearLoan() {
    return Padding(padding: const EdgeInsets.all(5.0),
    child: Container(
      height: 60.0,
      child: TextButton(
        style: ButtonStyle(foregroundColor: MaterialStateProperty.all<Color>(Colors.green),
        ),
        child: Text('Clear'),
      onPressed: () {
        
      }, 
      ),
    ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Farmers Loans'),
      ),
      drawer: Drawer(
        child: Padding(
          padding: const EdgeInsets.only(top: 32.0),
          child: ListTile(
    
            title: GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => otherLoans()));
              },
              child: Text(
                'Other Loans',
                style: TextStyle(color: Colors.black,fontSize: 24,
                ),
                ),
              
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(child: Container(
        height: MediaQuery.of(context).size.height -50,
        alignment: Alignment.topCenter,
        
        )),
    );
  }
}




