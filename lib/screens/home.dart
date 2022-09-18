// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lab_08/components/Mywidgets.dart';
import 'package:lab_08/components/mywidget_restaurant.dart';
import 'package:lab_08/screens/electronshops.dart';
import 'package:lab_08/screens/resturants.dart';
import 'package:lab_08/screens/shops.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      appBar: AppBar(
        title: Text("Fast Delivery"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
          child: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Color.fromARGB(255, 230, 230, 230),
                Colors.grey.shade200,
                Color.fromARGB(255, 255, 221, 225),
                Color.fromARGB(255, 255, 169, 169),
              ]),
        ),
        child: Column(
          children: [
            Container(
              alignment: Alignment.topCenter,
              width: double.infinity,
              height: 250,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(
                          'https://img.freepik.com/free-vector/delivery-service-with-masks-concept_23-2148509518.jpg?w=2000'),
                      fit: BoxFit.cover)),
              child: Text("Fast Delivery",
                  style: GoogleFonts.combo(fontSize: 30, color: Colors.red)),
            ),
            SizedBox(
              height: 50,
            ),
            Mywidget(
                'https://kauai.co.za/wp-content/uploads/2020/10/The-Normal-Burger-750x750px-1024x1024.jpg',
                "Food        ", () {
              Navigator.push(context, MaterialPageRoute(
                builder: (context) {
                  return Shops(shopType: "Resturants");
                  // return Screen1();
                },
              ));
            }),
            SizedBox(
              height: 20,
            ),
            Mywidget(
                'https://www.powerplanetonline.com/cdnassets/sony_dualsense_ps5_01_blanco_l.jpg',
                "Electronics", () {
              Navigator.push(context, MaterialPageRoute(
                builder: (context) {
                  return Shops(shopType: "Electronics");
                  // return Screen2();
                },
              ));
            }),
            SizedBox(
              height: 20,
            ),
            Mywidget(
                'https://thumbs.dreamstime.com/b/groceries-paper-bag-vector-illustration-97077851.jpg',
                "Groceries  ",
                () {}),
            SizedBox(
              height: 55,
            ),
          ],
        ),
      )),
    );
  }
}
