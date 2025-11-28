import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
 const LoginScreen({ super.key });

 @override
  Widget build(BuildContext context){
    return SafeArea(
     child: Center(
       child: Column(
      children: [
      Image.asset('assets/image/instagram.png'),
      SizedBox(height: 50.0),
      TextFormField(
       decoration: InputDecoration(
        labelText: 'Username / Email',
        border: OutlineInputBorder(),
       ),
      ),
      SizedBox(height: 10.0),
      TextFormField(
       decoration: InputDecoration(
        labelText: 'Username / Email',
        border: OutlineInputBorder(),
       ),
      ),
      SizedBox(height: 50.0),
      ElevatedButton(
      child: Text('Log in'),
      onPressed: () => {
        },
      ),
      SizedBox(height: 10.0),
      RichText(text: TextSpan(
        children: const<TextSpan>[
        TextSpan(text: "Don't have an account?"),
        TextSpan(text: "Sign up")
        ]
        ))
      ],
      ) 
     )
    );
  }
}
