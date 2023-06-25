// ignore_for_file: library_private_types_in_public_api, avoid_print

import 'package:flutter/material.dart';

class ChooseLocation extends StatefulWidget {
  const ChooseLocation({super.key});

  @override
  _ChooseLocationState createState() => _ChooseLocationState();
}

class _ChooseLocationState extends State<ChooseLocation> {
  void getData() async {
    // simulate network request for a username
    String username = await Future.delayed(const Duration(seconds: 3), () {
      return 'yoshi';
    });

    // simulate network request to get bio of the username
    String bio = await Future.delayed(const Duration(seconds: 2), () {
      return 'vegan, musician & egg collector';
    });

    print('$username - $bio');
  }

  @override
  void initState() {
    super.initState();
    getData();
    print('hey there!');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 238, 238, 238),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 13, 71, 161),
        title: const Text('Choose a Location'),
        centerTitle: true,
        elevation: 0,
      ),
    );
  }
}
