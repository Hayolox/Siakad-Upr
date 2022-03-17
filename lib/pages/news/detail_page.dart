import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:siakad/model/news_model.dart';

class NewsDetail extends StatelessWidget {
  String getImage;
  String getTitle;
  String getDedescription;
  String getDate;
  NewsDetail({
    required this.getImage,
    required this.getTitle,
    required this.getDedescription,
    required this.getDate,
  });
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.only(
          right: 30,
          left: 30,
          top: 30,
        ),
        child: ListView(
          children: [
            Container(
              height: 200,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.grey,
                borderRadius: BorderRadius.circular(20),
                image: DecorationImage(
                    image: NetworkImage(getImage), fit: BoxFit.cover),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              getTitle,
              style: GoogleFonts.poppins(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              getDate,
              style: GoogleFonts.poppins(
                fontSize: 14,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              getDedescription,
              style: GoogleFonts.poppins(fontSize: 18),
            ),
          ],
        ),
      ),
    );
  }
}
