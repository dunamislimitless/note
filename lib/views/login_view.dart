import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  late final TextEditingController _email;
  late final TextEditingController _password;

  @override
  void initState() {
    _email = TextEditingController();
    _password = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    _email.dispose();
    _password.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login'),
      ),
      body: Column(
        Sizedbox(
          width: 0,
          height: 70,
        ),
        children: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: TextField(
                controller: _email,
                enableSuggestions: false,
                autocorrect: false,
                decoration: const InputDecoration(
                  hintText: 'Email',
                )),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: TextField(
              controller: _password,
              obscureText: true,
              decoration: const InputDecoration(
                hintText: 'Password',
              ),
            ),
          ),
          TextButton(onPressed: () async {}, child: const Text('Login')),
        ],
      ),
    );
  }
}
