import 'package:flutter/material.dart';
import 'package:login/Screens/page1.dart';
class ThirdPage extends StatefulWidget {
  const ThirdPage({super.key});

  @override
  State<ThirdPage> createState() => _ThirdPageState();
}

class _ThirdPageState extends State<ThirdPage> {
  final TextEditingController _email = TextEditingController();
  final TextEditingController _password = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.light_mode_outlined),
            onPressed: () {},
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        
        child: SingleChildScrollView(
          child: Column(children: [
            SizedBox(height: 30),
            Center(
                child: CircleAvatar(
                  radius: 70,
                  backgroundImage: AssetImage(
                    "images/pic.jpg",
                  ),
                  child: Icon(Icons.linked_camera_outlined),
                )),
            SizedBox(
              height: 20,
            ),
            // Align(
            //     alignment: Alignment.centerLeft,
            //     child: Text('Full name', style: TextStyle(color: Colors.white))),
            // SizedBox(height: 10),
            // TextField(
            //   decoration: InputDecoration(
            //       labelStyle: TextStyle(color: Colors.white),
            //       border: OutlineInputBorder(),
            //       enabledBorder: OutlineInputBorder(
            //           borderSide: BorderSide(color: Colors.white)),
            //       labelText: 'Full name'),
            // ),
            Align(
                alignment: Alignment.centerLeft,
                child: Text('Email', style: TextStyle(color: Colors.white))),
            SizedBox(height: 10),
            TextField(
              controller: _email,
              decoration: InputDecoration(
                  labelStyle: TextStyle(color: Colors.white),
                  border: OutlineInputBorder(),
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white)),
                  labelText: 'Email'),
            ),
            // Align(
            //     alignment: Alignment.centerLeft,
            //     child: Text('ph no', style: TextStyle(color: Colors.white))),
            // SizedBox(height: 10),
            // TextField(
            //     controller: _password,
            //     decoration: InputDecoration(
            //         labelStyle: TextStyle(color: Colors.white),
            //         border: OutlineInputBorder(),
            //         enabledBorder: OutlineInputBorder(
            //             borderSide: BorderSide(color: Colors.white)),
            //         labelText: 'ph no')),
            SizedBox(height: 20),
            Align(
                alignment: Alignment.centerLeft,
                child: Text('Password', style: TextStyle(color: Colors.white))),
            SizedBox(height: 10),
            TextField(
                controller: _password,
                decoration: InputDecoration(
                    labelStyle: TextStyle(color: Colors.white),
                    border: OutlineInputBorder(),
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white)),
                    labelText: 'Password')),
            SizedBox(height: 20),
            // Text("About",style: TextStyle(color: Colors.white)),
            // TextField(maxLines: 6,decoration: InputDecoration(
            //   border: OutlineInputBorder(borderRadius: BorderRadius.circular(10))
            // ),),
            ElevatedButton(
              onPressed: () {
              },
              child: Text('Login'),
              style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30)),
                  fixedSize: Size(460, 40)),
            ),
            SizedBox(height: 20),
            TextButton(onPressed: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const Profile()),
              );
            }, child: Text('Dont Have an Account?',style: TextStyle(color: Colors.white),))
          ]),
        ),
      ),
    );
  }

}