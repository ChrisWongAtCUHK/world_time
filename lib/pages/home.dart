// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  late Object? data;

  @override
  Widget build(BuildContext context) {
    data = ModalRoute.of(context)?.settings.arguments;
    // ignore: avoid_print
    print(data);

    return Scaffold(
      body: SafeArea(
        child: Column(
          children: <Widget>[
            ElevatedButton.icon(
              onPressed: () {
                Navigator.pushNamed(context, '/location');
              },
              icon: const Icon(
                Icons.edit_location,
              ),
              label: const Text('Edit Location'),
            ),
          ],
        ),
      ),
    );
  }
}
