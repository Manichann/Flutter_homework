import 'package:flutter/material.dart';
import 'package:final_project/item/services/world_time.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class Loading extends StatefulWidget {
  const Loading({super.key});

  @override
  State<Loading> createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {

  void setupWorldTime() async {
    WorldTime instance = WorldTime(location: 'Vientiane', flag: 'laos.jpg', url: 'Asia/Bangkok');
    await instance.getTime();
    Navigator.pushReplacementNamed(context, '/item24/home', arguments: {
      'location': instance.location,
      'flag': instance.flag,
      'time': instance.time,
      'isDayTime': instance.isDayTime
    });
  }

  @override
  void initState() {
    super.initState();
    setupWorldTime();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[700],
      body: const Center(
        child: SpinKitThreeBounce(
          color: Colors.white,
          size: 50,),
      )
    );
  }
}