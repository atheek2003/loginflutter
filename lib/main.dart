import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(debugShowCheckedModeBanner: false, home: Home()));
}

class Home extends StatelessWidget {
  const Home({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("My Profile")),
        body: Column(
          children: <Widget>[
            Row(children: <Widget>[
              CircleAvatar(
                radius: 40.0,
              ),
              SizedBox(
                width: 30,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 70.0, left: 20.0),
                child: Column(children: <Widget>[
                  Text(
                    "NAME",
                    style: TextStyle(fontSize: 25),
                  ),
                ]),
              )
            ]),
            SizedBox(height: 50),
            Column(children: <Widget>[
              Row(children: <Widget>[
                Icon(Icons.food_bank_rounded),
                Text(
                  "My Orders",
                  style: TextStyle(fontSize: 19),
                )
              ]),
              SizedBox(height: 20),
              Row(children: <Widget>[
                Icon(Icons.wallet),
                Text(
                  "My Wallet",
                  style: TextStyle(fontSize: 19),
                )
              ]),
              SizedBox(height: 20),
              Row(children: <Widget>[
                Icon(Icons.history),
                Text(
                  "Order History",
                  style: TextStyle(fontSize: 19),
                )
              ]),
              SizedBox(height: 20),
              Row(children: <Widget>[
                Icon(Icons.key),
                Text(
                  "Change Password",
                  style: TextStyle(fontSize: 19),
                )
              ]),
              SizedBox(height: 20),
              Row(children: <Widget>[
                Icon(Icons.logout),
                Text(
                  "Log Out",
                  style: TextStyle(fontSize: 19),
                )
              ]),
            ]),
            SizedBox(height: 30),
            Text("Created By Atheek,Abhishek & Akash  "),
          ],
        ));
  }
}
