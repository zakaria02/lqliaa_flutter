import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:google_fonts_arabic/fonts.dart';









class SliverHome extends StatelessWidget {
  const SliverHome({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      automaticallyImplyLeading: false,
      actions: <Widget>[Container()],
      expandedHeight: 200.0,
      floating: false,
      pinned: false,
      flexibleSpace: FlexibleSpaceBar(
        centerTitle: true,
        title: Text(
          'تقريب الإدارة من المواطن هي غايتنا',
          textAlign: TextAlign.center,
          style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 15),
        ),
        background: Image(
          image: AssetImage('assets/header_back.jpg'),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}








