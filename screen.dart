import 'dart:convert';
import 'dart:ffi';

import 'package:flutter/material.dart';

class hello_user extends StatefulWidget {
  const hello_user({super.key});

  @override
  State<hello_user> createState() => _hello_userState();
}

class _hello_userState extends State<hello_user> {
  @override
   Widget build(BuildContext context) {
    // Replace the Scaffold because we are already in the Homescreen's Scaffold
    return Scaffold(
        appBar: AppBar(
          title: const Text('Next Step'),
        ),
        body: const Center(
          child: ElevatedButtonExample(), // Use the corrected button
        ),
    );
  }
}

class ElevatedButtonExample extends StatelessWidget {
  const ElevatedButtonExample({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () async {
        // Handle the onPress logic here
        var url = Uri.parse("https://github.com/arjunaprasad800/mediapp/blob/main/README.md");
        var response=await http.get(url);
        print('response statuscode: ${response.statuscode}');
        print('response body:${response.body}');
        var data = jsonDecode(response.body);
        print(data['message']);
Navigator.of(context).push(
            MaterialPageRoute(builder: (context) => const hello_user()),
        );
      },
      child: const Text('Go next'),
    );
  }
}