import 'dart:js';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
Future<void>Register(
{required String name,
required String Email,
required String Phone,
required String username,
required String Password,
required BuildContext context
})
async {
  var data={ 'username': username,
    'name': name,
    'email': Email,
    'phone':Phone,
    'password':Password};
  var response=await http.post(Uri.parse('https://ecommerce-s2.onrender.com/api/register'),

headers:{
'Content-Type':'application/x-www-form-urlencoded'},
body:data
  );
print(response.statusCode);
if(response.statusCode==200){
  ScaffoldMessenger.of(context).showSnackBar(SnackBar(content:Text("Registration Successfull")));}
else{
  ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Registration failed")));
}
}

}


