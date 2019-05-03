import 'package:flutter/material.dart';
import '../LijanSliverBar.dart';

class Maktab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'المكتب',
          textDirection: TextDirection.rtl,
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: NestedScrollView(
        headerSliverBuilder: (context, innerBoxIsScrolled) {
          return <Widget>[
            new SliverLijan('المكتب'),
          ];
        },
        body: ListView(
          shrinkWrap: true,
          padding: EdgeInsets.all(10.0),
          children: <Widget>[
            Column(
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    CardContainer('assets/bureau1.png','محمد بيكز','رئيس المجلس','العدالة والتنمية'),
                    CardContainer('assets/bureau2.png', 'الحسان المهدي', 'النائب الأول للرئيس','جبهة القوى الديمقراطية')
                  ],
                ),Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    CardContainer('assets/bureau3.png','خليل صويلح','النائب الثاني للرئيس','الأصالة و المعاصرة'),
                    CardContainer('assets/bureau4.png', 'محمد سافع بن عبد الله', 'النائب الثالث للرئيس','الأصالة و المعاصرة')
                  ],
                ),Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    CardContainer('assets/bureau5.png','علي سالم الصلاي','النائب الرابع للرئيس','جبهة القوى الديمقراطية'),
                    CardContainer('assets/bureau6.png', 'لحسن المنصوري', 'النائب الخامس للرئيس','العدالة والتنمية')
                  ],
                ),Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    CardContainer('assets/bureau7.png','مينة دجاج','لنائب السادس للرئيس','العدالة والتنمية'),
                    CardContainer('assets/bureau8.png', 'رقية أومنصور', 'النائب السابع للرئيس','')
                  ],
                ),Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    CardContainer('assets/bureau9.png','محمد سافع بن ابراهيم','كاتب المجلس',''),
                    CardContainer('assets/bureau10.png', 'محمد أكثير', 'نائب كاتب المجلس','')
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

CardContainer(String imgsrc,String name,String position,String part) {
  return Container(
    width: 190,
    height: 200,
    child: Card(
      child: Column(
        children: <Widget>[
          Container(
              child: Stack(
            children: <Widget>[
              Image(image: AssetImage(imgsrc)),
              part!=''?Container(
                margin: EdgeInsets.only(top: 100),
                alignment: Alignment(0, 1),
                color: Color.fromRGBO(0, 0, 0, 0.5),
                child: Text(
                  part,
                  style: TextStyle(color: Colors.white),
                ),
              ):Container(),
            ],
          )),
          Text(
            name,
            textDirection: TextDirection.rtl,
            style: TextStyle(
                color: Color(0xff2196F3), fontWeight: FontWeight.bold),
          ),
          Text(position),
        ],
      ),
    ),
  );
}
