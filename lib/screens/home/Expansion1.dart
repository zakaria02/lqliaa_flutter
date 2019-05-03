import 'package:flutter/material.dart';

class Expansion1 extends StatelessWidget {
  const Expansion1({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ExpansionTile(
      title: Text(
        'المجلس الجماعي',
        textDirection: TextDirection.rtl,
        style: TextStyle(
          fontWeight: FontWeight.bold,
          color: Color(0xff7049BA),
        ),
      ),
      children: <Widget>[
        Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'الهدف من المجلس الجماعي هو تقريب الإدارة من المواطن و إسناد حل المشاكل المحلية إلى مجالس منتخبة',
                textDirection: TextDirection.rtl,
              ),
            ),
            Column(
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    MajlissInkwel(0),
                    MajlissInkwel(1),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    MajlissInkwel(2),
                    MajlissInkwel(3),
                  ],
                )
              ],
            ),
          ],
        )
      ],
    );
  }
}

class MajlissCards {
  String imgsrc;
  String title;
  MajlissCards({this.imgsrc, this.title});
}

List<MajlissCards> majlissCard = <MajlissCards>[
  MajlissCards(
    imgsrc: 'assets/Committees1.png',
    title: 'اللجان',
  ),
  MajlissCards(
    imgsrc: 'assets/office1.png',
    title: 'المكتب',
  ),
  MajlissCards(
    imgsrc: 'assets/Conseil1.png',
    title: 'المجلس',
  ),
  MajlissCards(
    imgsrc: 'assets/president1.png',
    title: 'الرئيس',
  ),
];

class MajlissInkwel extends StatelessWidget {
  int index;
  MajlissInkwel(this.index);
  @override
  Widget build(BuildContext context) {
    return InkWell(
      highlightColor: Color(0xffFFB03A),
      splashColor: Color(0xffFFB03A),
      onTap: () {},
      child: Card(
        shape: Border.all(color: Color(0xffFFB03A)),
        child: Column(
          children: <Widget>[
            Image(
              image: AssetImage(majlissCard[index].imgsrc),
            ),
            Text(
              majlissCard[index].title,
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
