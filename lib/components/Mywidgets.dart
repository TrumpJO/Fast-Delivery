import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Mywidget extends StatelessWidget {
  Mywidget(this.img_url, this.categories, this.ontapping);
  String? img_url;
  String? categories;
  Function() ontapping;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontapping,
      child: Container(
        width: 300,
        decoration: BoxDecoration(
            color: Color.fromARGB(67, 153, 153, 153),
            borderRadius: BorderRadius.circular(30)),
        child: Row(
          children: [
            SizedBox(
              width: 10,
            ),
            Text("${categories}", style: GoogleFonts.combo(fontSize: 30)),
            SizedBox(
              width: 40,
            ),
            CircleAvatar(
              radius: 50,
              backgroundImage: NetworkImage('${img_url}'),
            ),
          ],
        ),
      ),
    );
  }
}
