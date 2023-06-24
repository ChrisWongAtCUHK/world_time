// ignore_for_file: library_private_types_in_public_api, avoid_print

import 'package:flutter/material.dart';

class ChooseLocation extends StatefulWidget {
  const ChooseLocation({super.key});

  @override
  _ChooseLocationState createState() => _ChooseLocationState();
}

class _ChooseLocationState extends State<ChooseLocation> {
  int count = 0;

  @override
  void initState() {
    super.initState();
    print('initState function runs');
  }

  @override
  Widget build(BuildContext context) {
    print('build function runs');
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 238, 238, 238),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 13, 71, 161),
        title: const Text('Choose a Location'),
        centerTitle: true,
        elevation: 0,
      ),
      body: ElevatedButton(
        onPressed: () {
          setState(() {
            count += 1;
          });
        },
        child: Text('count is $count'),
      ),
    );
  }
}
