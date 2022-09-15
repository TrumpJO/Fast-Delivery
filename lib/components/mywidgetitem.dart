import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Itemswidget extends StatefulWidget {
  Itemswidget(this.itemname, this.sub, this.img_url);
  String itemname;
  String sub;
  //String value;
  String img_url;
  @override
  State<Itemswidget> createState() => _ItemswidgetState();
}

class _ItemswidgetState extends State<Itemswidget> {
  String groupval = "";
  @override
  Widget build(BuildContext context) {
    return Container(
      child: RadioListTile(
        title:
            Text("${widget.itemname}", style: GoogleFonts.combo(fontSize: 30)),
        subtitle: Text("${widget.sub}", style: GoogleFonts.combo(fontSize: 25)),
        secondary: Image.network('${widget.img_url}'),
        value: "mac",
        groupValue: groupval,
        onChanged: (value) {
          setState(() {
            groupval = value.toString();
          });
        },
      ),
    );
  }
}
