// ignore_for_file: library_private_types_in_public_api, avoid_print

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert' as convert;

class Loading extends StatefulWidget {
  const Loading({super.key});

  @override
  _LoadingState createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
  void getData() async {
    var url =
        Uri.https('jsonplaceholder.typicode.com', '/todos/1', {'q': '{https}'});

    // Await the http get response, then decode the json-formatted response.
    var response = await http.get(url);
    var jsonResponse =
        convert.jsonDecode(response.body) as Map<String, dynamic>;

    print(jsonResponse);
    print(jsonResponse['title']);
  }

  @override
  void initState() {
    super.initState();
    getData();
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: Text('loading screen'),
      ),
    );
  }
}
