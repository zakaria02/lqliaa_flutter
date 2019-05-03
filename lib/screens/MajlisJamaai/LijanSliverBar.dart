import 'package:flutter/material.dart';


class SliverLijan extends StatelessWidget {
  String title;
  SliverLijan(this.title);

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
          title,
          textAlign: TextAlign.center,
          style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 15),
        ),
        background: Image(
          image: AssetImage('assets/header_back1.png'),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}