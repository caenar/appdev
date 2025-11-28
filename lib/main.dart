import 'package:app_dev_finals/screens/login_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Instagram',
      theme: ThemeData(
        colorScheme: .fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
   return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/image/instagram.png'),
            SizedBox(height: 30.0),
            ElevatedButton(
            child: Text('Create an account'),
            onPressed: () => {
                Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => LoginScreen())
                )
              },
            ),
            ElevatedButton(
            child: Text('I already have an account'),
            onPressed: () => {
                Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => LoginScreen())
                )
            },
            ),
          ],
        ),
      ),
    );
  }
}
