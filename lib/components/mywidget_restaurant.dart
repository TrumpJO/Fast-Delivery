import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class restaurantList extends StatelessWidget {
  restaurantList(
      {this.title1,
      this.imageurl,
      this.rate,
      this.BackgroundImageUrl,
      this.tap1});
  String? title1;
  String? BackgroundImageUrl;
  String? imageurl;
  String? rate;

  Function()? tap1;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: tap1,
      child: ListTile(
        trailing: Icon(Icons.store),
        leading: Image(image: NetworkImage(imageurl!)),
        title: Text(
          "$title1",
          style: GoogleFonts.combo(fontSize: 30, color: Colors.black),
        ),
        subtitle: Row(
          children: [
            Icon(
              Icons.star,
              color: Colors.amber,
            ),
            SizedBox(
              width: 20,
            ),
            Text(
              "$rate",
              style: GoogleFonts.combo(fontSize: 20, color: Colors.black),
            ),
          ],
        ),
      ),
    );
  }
}
