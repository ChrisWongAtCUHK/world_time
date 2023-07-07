import 'package:http/http.dart' as http;
import 'dart:convert' as convert;
import 'package:http/http.dart';
import 'package:intl/intl.dart';

class WorldTime {
  String location; // location name for the UI
  String flag; // url to an asset flag icon
  String url; // location url for api endpoint
  late String time; // the time in that location
  late bool isDaytime; // true or false if daytime or not

  WorldTime({required this.location, required this.flag, required this.url});

  Future<void> getTime() async {
    var uri = Uri.https(
        'www.worldtimeapi.org', '/api/timezone/$url', {'q': '{https}'});

    // Await the http get response, then decode the json-formatted response.
    Response response = await http.get(uri);
    Map<String, dynamic> data = convert.jsonDecode(response.body);
    DateTime datetime = DateTime.parse(data['datetime']);

    time = DateFormat.jm().format(DateTime.parse(data['datetime']));

    // set the time property
    isDaytime = datetime.hour > 6 && datetime.hour < 20 ? true : false;
  }
}
