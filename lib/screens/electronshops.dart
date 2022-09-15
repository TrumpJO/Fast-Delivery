import 'package:flutter/material.dart';
import 'package:lab_08/components/mywidgetshop.dart';
import 'package:lab_08/screens/items.dart';
import 'package:google_fonts/google_fonts.dart';

class Screen2 extends StatefulWidget {
  const Screen2({super.key});

  @override
  State<Screen2> createState() => _Screen2State();
}

class _Screen2State extends State<Screen2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [Colors.red.shade200, Colors.cyan.shade300])),
        child: ListView(children: [
          SizedBox(
            height: 40,
          ),
          restaurant(
              title1: "Action Mobile",
              rate: "5",
              imageurl:
                  "https://play-lh.googleusercontent.com/2J_k1TRgInbsrgNXoAlsBJdemsEzEJFHUyv23k2UfcAVvOMZOdw9XKRCisdWl7PvVWJ2",
              tap1: () {}),
          SizedBox(
            height: 40,
          ),
          restaurant(
              title1: "Aladdin",
              rate: "3.5",
              imageurl:
                  "https://dellooni.com//media/jo/amman/shop/aladdin-toys-center-amman-355246161.jpg"),
          SizedBox(
            height: 40,
          ),
          restaurant(
              title1: "City Center",
              rate: "4",
              imageurl:
                  "https://www.tipntag.com/files/get/original/place/_51248910c667a4.52854383_CityCenterComputers.jpg"),
          SizedBox(
            height: 40,
          ),
          restaurant(
              title1: "BCI",
              rate: "4.3",
              imageurl:
                  "https://bci-store.com/pub/media/wysiwyg/bci-mobile.png"),
          SizedBox(
            height: 40,
          ),
          restaurant(
              title1: "SmartBuy",
              rate: "4.1",
              imageurl:
                  "https://www.tipntag.com/files/get/original/place/_4fe834c2db6ad4.14715116_ScreenShot2012-06-25at12.51.40PM.png"),
        ]),
      ),
    );
  }
}
