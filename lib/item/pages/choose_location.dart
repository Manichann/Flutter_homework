import 'package:flutter/material.dart';
import 'package:final_project/item/services/world_time.dart';

class ChooseLocation extends StatefulWidget {
  const ChooseLocation({super.key});

  @override
  State<ChooseLocation> createState() => _ChooseLocationState();
}

class _ChooseLocationState extends State<ChooseLocation> {
  List<WorldTime> locations = [
    WorldTime(location: 'New York', flag: 'usa.png', url: 'America/New_York'),
    WorldTime(location: 'Los Angeles', flag: 'usa.png', url: 'America/Los_Angeles'),
    WorldTime(location: 'London', flag: 'london.jpg', url: 'Europe/London'),
    WorldTime(location: 'Berlin', flag: 'germany.jpg', url: 'Europe/Berlin'),
    WorldTime(location: 'Cairo', flag: 'egypt.jpg', url: 'Africa/Cairo'),
    WorldTime(location: 'Seoul', flag: 'korea.jpg', url: 'Asia/Seoul'),
    WorldTime(location: 'Tokyo', flag: 'japan.png', url: 'Asia/Tokyo'),
    WorldTime(location: 'Bangkok', flag: 'thailand.jpg', url: 'Asia/Bangkok'),
    WorldTime(location: 'Vientiane', flag: 'laos.jpg', url: 'Asia/Bangkok'),
    WorldTime(location: 'Sydney', flag: 'australia.jpg', url: 'Australia/Sydney'),
  ];

  void updateTime(index) async {
    WorldTime instance = locations[index];
    await instance.getTime();

    Navigator.pop(context, {
      'location': instance.location,
      'flag': instance.flag,
      'time': instance.time,
      'isDayTime': instance.isDayTime
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[200],
        appBar: AppBar(
          backgroundColor: Colors.blue[900],
          title: Text('Choose a location'),
          centerTitle: true,
          elevation: 0,
        ),
        body: ListView.builder(
          itemCount: locations.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: EdgeInsets.symmetric(vertical: 1, horizontal: 4),
              child: Card(
                child: ListTile(
                  onTap: () {
                    updateTime(index);
                  },
                  title: Text(locations[index].location),
                  leading: CircleAvatar(
                    backgroundImage: AssetImage('${locations[index].flag}'),
                  ),
                ),
              ),
            );
          },
        ));
  }
}
