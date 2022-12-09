import 'package:flutter/material.dart';
import 'package:notes/views/login_view.dart';
import 'package:notes/views/register.dart';

void main() {
  runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'My note',
      theme: ThemeData(
        backgroundColor: Colors.white38,
        primarySwatch: Colors.green,
      ),
      home: const Register(),
      routes: {
        '/login/': (context) => const LoginPage(),
        'register/': (context) => const Register(),
      }));
}

// class HomePage extends StatelessWidget {
//   const HomePage({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Home Page'),
//       ),
//     );
//   }
// q}
