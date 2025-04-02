import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

void main() {
  runApp(const Homescreen());
}

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class hello_user extends StatefulWidget {
  const hello_user({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  final ScrollController _controller = ScrollController();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('Go back')),
        body: ElevatedButtonExample(),
      ),
    );
  }
}

class ElevatedButtonExample extends StatelessWidget {
  const ElevatedButtonExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        onPressed: () async {
          var url = Uri.parse("https://github.com/arjunaprasad800/mediapp/blob/main/README.md"); // Replace with your actual URL
          var response = await http.get(url);
          print('response: ${response.statusCode}');
          print('response body:${response.body}');
          var data = jsonDecode(response.body);
          print(data['messsage']);
          
          Navigator.of(context).push(
            MaterialPageRoute(builder: (context) => const hello_user()),
          );
        },
        child: const Text('Go next'),
      ),
    );
  }
  }
          






