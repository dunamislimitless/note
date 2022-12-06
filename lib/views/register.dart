import 'package:flutter/material.dart';

class Register extends StatefulWidget {
  const Register({Key? key}) : super(key: key);

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  late final TextEditingController _email;
  late final TextEditingController _password;

  @override
  void initState() {
    _email = TextEditingController(); // to manage password and email.
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
        title: const Text('Create Account'),
      ),
      body: Column(
        children: [
          SizedBox(
            width: 0,
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: const TextField(
              decoration: InputDecoration(
                hintText: 'First Name',
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: const TextField(
              decoration: InputDecoration(
                hintText: 'Last Name',
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: const TextField(
              decoration: InputDecoration(
                hintText: 'Age',
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: const TextField(
              decoration: InputDecoration(
                hintText: 'Gender',
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: const TextField(
              decoration: InputDecoration(
                hintText: 'Address',
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: TextField(
                controller: _email,
                enableSuggestions: false,
                autocorrect: false,
                keyboardType: TextInputType.emailAddress,
                decoration: const InputDecoration(
                  hintText: 'Email',
                )),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: TextField(
              controller: _password,
              obscureText: true,
              enableSuggestions: false,
              autocorrect: false,
              decoration: const InputDecoration(
                hintText: 'Password',
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: TextField(
              controller: _password,
              obscureText: true,
              enableSuggestions: false,
              autocorrect: false,
              decoration: const InputDecoration(
                hintText: 'Confirm Password',
              ),
            ),
          ),
          TextButton(
              onPressed: () async {}, child: const Text('Create Account')),
        ],
      ),
    );
  }
}
