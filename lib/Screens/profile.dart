import 'package:flutter/material.dart';
class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      appBar: AppBar(
        backgroundColor: Colors.transparent,),
      body: Column(
        children: [
          Align(
              alignment: Alignment.center,
              child: Text('name:', style: TextStyle(color: Colors.black,fontSize: 25))),
          Align(
              alignment: Alignment.center,
              child: Text('Email:', style: TextStyle(color: Colors.black,fontSize: 25))),
          Align(
              alignment: Alignment.center,
              child: Text('Phone:', style: TextStyle(color: Colors.black,fontSize: 25))),
          Align(
              alignment: Alignment.center,
              child: Text('Username:', style: TextStyle(color: Colors.black,fontSize: 25))),
          Align(
              alignment: Alignment.center,
              child: Text('Password:', style: TextStyle(color: Colors.black,fontSize: 25))),

        ],
      ),
    );
  }
}