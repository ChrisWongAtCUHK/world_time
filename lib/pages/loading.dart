// ignore_for_file: library_private_types_in_public_api, avoid_print

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert' as convert;
import 'package:world_time/timezone.dart';

class Loading extends StatefulWidget {
  const Loading({super.key});

  @override
  _LoadingState createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
  void getTime() async {
    var url = Uri.https('www.worldtimeapi.org', '/api/timezone/Europe/London',
        {'q': '{https}'});

    // Await the http get response, then decode the json-formatted response.
    var response = await http.get(url);
    var timezone = Timezone.fromJson(convert.jsonDecode(response.body));

    print(timezone);
    print(timezone.datetime);
    print(timezone.utc_offset);
  }

  @override
  void initState() {
    super.initState();
    getTime();
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
