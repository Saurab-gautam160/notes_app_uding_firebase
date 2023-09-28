import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  TextEditingController _email = TextEditingController();
  TextEditingController _pasword = TextEditingController();

  @override
  void initState() {
    _email = TextEditingController();
    _pasword = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    _email.dispose();
    _pasword.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: TextField(
                  controller: _email,
                  decoration: const InputDecoration(
                    hintText: 'Enter a  vaild email',
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: TextField(
                  controller: _pasword,
                  decoration: const InputDecoration(
                    hintText: 'Enter password',
                  ),
                ),
              ),
              ElevatedButton(
                onPressed: () {},
                child: const Text(
                  'Sumbit',
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
