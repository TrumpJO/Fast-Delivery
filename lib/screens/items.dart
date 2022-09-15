import 'package:flutter/material.dart';
import 'package:lab_08/components/mywidgetitem.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lab_08/screens/home.dart';

class Item_page extends StatefulWidget {
  const Item_page({super.key});

  @override
  State<Item_page> createState() => _Item_pageState();
}

class _Item_pageState extends State<Item_page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("Items")),
        body: Container(
          height: double.infinity,
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  colors: [Colors.red.shade200, Colors.cyan.shade300])),
          child: SingleChildScrollView(
              child: Column(
            children: [
              Text("Regular Meals", style: GoogleFonts.combo(fontSize: 30)),
              SizedBox(
                height: 20,
              ),
              Itemswidget("Bigtasty", "chicken tomato and pickels",
                  "https://s7d1.scene7.com/is/image/mcdonalds/mcdonalds-BigTasty:1-3-product-tile-desktop?wid=829&hei=515&dpr=off"),
              SizedBox(
                height: 20,
              ),
              Itemswidget("BigMac", "chicken tomato and pickels",
                  "https://img.taste.com.au/nXawSYxW/w720-h480-cfill-q80/taste/2019/06/big-mac-150974-1.jpg"),
              SizedBox(
                height: 20,
              ),
              Itemswidget("Happy Meal", "chicken tomato and pickels",
                  "https://media-cdn.tripadvisor.com/media/photo-s/11/56/d1/78/happy-meal.jpg"),
              Text("Large Meals", style: GoogleFonts.combo(fontSize: 30)),
              SizedBox(
                height: 20,
              ),
              Itemswidget("Bigtasty", "chicken tomato and pickels",
                  "https://s7d1.scene7.com/is/image/mcdonalds/mcdonalds-BigTasty:1-3-product-tile-desktop?wid=829&hei=515&dpr=off"),
              SizedBox(
                height: 20,
              ),
              Itemswidget("BigMac", "chicken tomato and pickels",
                  "https://img.taste.com.au/nXawSYxW/w720-h480-cfill-q80/taste/2019/06/big-mac-150974-1.jpg"),
              SizedBox(
                height: 20,
              ),
              Itemswidget("Happy Meal", "chicken tomato and pickels",
                  "https://media-cdn.tripadvisor.com/media/photo-s/11/56/d1/78/happy-meal.jpg"),
              ElevatedButton.icon(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(
                      builder: (context) {
                        return Home();
                      },
                    ));
                  },
                  icon: Icon(Icons.home),
                  label: Text("Back to home"))
            ],
          )),
        ));
  }
}
