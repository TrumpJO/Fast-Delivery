import 'package:flutter/material.dart';
import 'package:lab_08/components/mywidget_restaurant.dart';
import 'package:lab_08/screens/items.dart';
import 'package:google_fonts/google_fonts.dart';

class Resturants extends StatefulWidget {
  const Resturants({super.key});

  @override
  State<Resturants> createState() => _ResturantsState();
}

class _ResturantsState extends State<Resturants> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Shops"),
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Colors.red,
              Colors.red.shade300,
              Colors.red.shade200,
              Colors.grey.shade200,
              Colors.grey.shade100,
            ],
          ),
        ),
        child: ListView(children: [
          SizedBox(
            height: 40,
          ),
          restaurantList(
            title1: "McDonald's",
            rate: "5",
            imageurl:
                "https://play-lh.googleusercontent.com/0loj-whL4XSeF4v5W3d213b1pH0RRTQUlmK1VESE-Rsydp06rVyPTq_Hwpwm1avB8URL=w240-h480-rw",
            tap1: () {
              Navigator.push(context, MaterialPageRoute(builder: ((context) {
                return Item_page();
              })));
            },
          ),
          SizedBox(
            height: 40,
          ),
          restaurantList(
              title1: "pizza hut",
              rate: "3.5",
              imageurl:
                  "https://upload.wikimedia.org/wikipedia/commons/thumb/7/73/Pizza_Hut_1967-1999_logo.svg/1200px-Pizza_Hut_1967-1999_logo.svg.png"),
          SizedBox(
            height: 40,
          ),
          restaurantList(
              title1: "buffalo ",
              rate: "4",
              imageurl:
                  "https://media-cdn.tripadvisor.com/media/photo-p/19/16/60/11/buffalo-wings-rings-jabal.jpg"),
          SizedBox(
            height: 40,
          ),
          restaurantList(
              title1: "KFC",
              rate: "4.3",
              imageurl:
                  "https://wikiforschool.com/uploads/1261021200px-kfc_logo.svg.png"),
          SizedBox(
            height: 40,
          ),
          restaurantList(
              title1: "FireFly Burger",
              rate: "4.1",
              imageurl:
                  "https://play-lh.googleusercontent.com/3vmLq4zicHekvPfmmkbebOoFZskNesv9iD01MnyoGH1jCj3ctmWCCdM8js5dMbwt1I0"),
          SizedBox(
            height: 40,
          ),
          restaurantList(
              title1: "BurgerMakers",
              rate: "3.2",
              imageurl:
                  "https://pbs.twimg.com/profile_images/507775866047193088/45K72P2C_400x400.jpeg"),
        ]),
      ),
    );
  }
}
