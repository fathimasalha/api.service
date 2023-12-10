import 'package:flutter/material.dart';
import 'package:login/Screens/page1.dart';
import 'package:login/Services/api%20services.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {

  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController phonenoController = TextEditingController();
  TextEditingController usernameController = TextEditingController();
  bool loading=false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.black,
          leading: IconButton(
              onPressed: () => {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Profile(),
                    ))
              },
              icon: Icon(Icons.arrow_back)),
          actions: [
            IconButton(onPressed: () => {}, icon: Icon(Icons.wb_sunny_outlined),)
          ]),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: SingleChildScrollView(
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,


              children: [
                // Center(
                //   child: Stack(
                //     children: [
                //       // CircleAvatar(
                //       //   backgroundImage: AssetImage(
                //       //     'images/min.jpeg',
                //       //   ),
                //       //   radius: 50,
                //       // ),
                //       Positioned(
                //           bottom: 0,
                //           right: 0,
                //           child: Container(
                //               height: 40,
                //               width: 40,
                //               decoration: BoxDecoration(
                //                   shape: BoxShape.circle,
                //                   color: Colors.blue
                //               ),
                //               child: Icon(Icons.camera_alt_outlined,color: Colors.white,)))
                //     ],
                //   ),
                // ),
                Text('name', style: TextStyle(color: Colors.white)),
                TextField(
                  controller: nameController,
                  decoration: InputDecoration(
                    border:OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white54)
                    ) ,
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white54),
                        borderRadius: BorderRadius.circular(20.0)
                    ),
                    hintText: 'Enter Your Name',
                    hintStyle: TextStyle(color: Colors.white54),),
                ),
                Text('Password', style: TextStyle(color: Colors.white)),
                TextField(
                  controller: passwordController,
                  keyboardType: TextInputType.multiline,
                  maxLines: 2,
                  decoration: InputDecoration(
                      hintText: "Enter your password",
                      hintStyle: TextStyle(color: Colors.white54),
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.white54),
                          borderRadius: BorderRadius.circular(20.0) )),
                ),
                Text('Email', style: TextStyle(color: Colors.white)),
                TextField(
                  controller:emailController,
                  keyboardType: TextInputType.multiline,
                  maxLines: 2,
                  decoration: InputDecoration(
                      hintText: "Enter your email",
                      hintStyle: TextStyle(color: Colors.white54),
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.white54),
                          borderRadius: BorderRadius.circular(20.0) )),
                ),
                Text('Phone', style: TextStyle(color: Colors.white)),
                TextField(
                  controller:phonenoController,
                  keyboardType: TextInputType.multiline,
                  maxLines: 2,
                  decoration: InputDecoration(
                      hintText: "Enter your phone number",
                      hintStyle: TextStyle(color: Colors.white54),
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.white54),
                          borderRadius: BorderRadius.circular(20.0)
                      )),
                ),
                Text('Username', style: TextStyle(color: Colors.white)),
                TextField(
                  controller:usernameController,
                  keyboardType: TextInputType.multiline,
                  maxLines: 2,
                  decoration: InputDecoration(
                      hintText: "Enter your Username",
                      hintStyle: TextStyle(color: Colors.white54),
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.white54),
                          borderRadius: BorderRadius.circular(20.0) )),
                ),
                SizedBox(height: 70,),
                Container(
                    width: MediaQuery.of(context).size.width,
                    child: ElevatedButton(onPressed:(){Register(name: nameController.text, Password: passwordController.text, Email: emailController.text, Phone: phonenoController.text, username: usernameController.text, context: context);
                    }, child: Text('Register')
                    )
                )

              ]),
        ),
      ),
      backgroundColor: Colors.green,
    );
  }
}