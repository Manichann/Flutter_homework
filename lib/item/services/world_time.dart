import 'package:http/http.dart';
import 'dart:convert';
import 'package:intl/intl.dart';

class WorldTime {
  String location;
  String? time;
  String flag;
  String url;
  bool? isDayTime;

  WorldTime({required this.location, required this.flag, required this.url});

  Future<void> getTime() async {
    try {
      Response response =
          await get(Uri.parse('https://worldtimeapi.org/api/timezone/$url'));
      Map data = jsonDecode(response.body);

      String datetime = data['datetime'];
      String localDatetime = datetime.substring(0,datetime.length-6);

      DateTime now = DateTime.parse(localDatetime);

      //DateTime now = DateTime.parse(data['datetime']).toLocal();

      isDayTime = now.hour > 6 && now.hour < 18 ? true : false;
      time = DateFormat.jm().format(now);

      // Response response = await get(Uri.parse('https://jsonplaceholder.typicode.com/todos/1'));
      // Map data = jsonDecode(response.body);
      // print(data);
      // print(data['title']);

      // String username =await Future.delayed(Duration(seconds: 3), () {
      //   return 'yoshi';
      // });

      // String bio = await Future.delayed(Duration(seconds: 2), () {
      //   return 'vegan, musician & egg collector';
      // });

      // print('$username - $bio');
    } catch (e) {
      print('caught error: $e');
      time = 'could not get time data';
    }
  }
}
