import 'package:flutter/material.dart';

class Expansion2 extends StatelessWidget {
  const Expansion2({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ExpansionTile(
      title: Text(
        'الخدمات الجماعية و الإلكترونية',
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
                'من بين أبرز أهداف جماعة القليعة هي تقريب الإدارة من المواطن عن طريق خدمات إلكترونية أبرزها خدمة الحالة المدنية',
                textDirection: TextDirection.rtl,
              ),
            ),
            Column(
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    KhadamatInkwel(0),
                    KhadamatInkwel(1),
                    KhadamatInkwel(2),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    KhadamatInkwel(3),
                    KhadamatInkwel(4),
                    KhadamatInkwel(5),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[],
                )
              ],
            ),
          ],
        )
      ],
    );
  }
}

class KhadamatCards {
  String imgsrc;
  String title;
  KhadamatCards({this.imgsrc, this.title});
}

List<KhadamatCards> khadamatCard = <KhadamatCards>[
  KhadamatCards(
    imgsrc: 'assets/service1.png',
    title: 'الحالة المدنية',
  ),
  KhadamatCards(
    imgsrc: 'assets/service2.png',
    title: 'الشؤون الثقافية',
  ),
  KhadamatCards(
    imgsrc: 'assets/service3.png',
    title: 'الشرطة الإدارية',
  ),
  KhadamatCards(
    imgsrc: 'assets/service4.png',
    title: 'المالية',
  ),
  KhadamatCards(
    imgsrc: 'assets/service5.png',
    title: 'الممتلكات',
  ),
  KhadamatCards(
    imgsrc: 'assets/service6.png',
    title: 'القسم الصحي',
  ),
];

class KhadamatInkwel extends StatelessWidget {
  int index;
  KhadamatInkwel(this.index);
  @override
  Widget build(BuildContext context) {
    return InkWell(
      highlightColor: Color(0xff7049BA),
      splashColor: Color(0xff7049BA),
      onTap: () {},
      child: Card(
        // shape:
        //     Border.all(color: Color(0xff7049BA)),
        child: Column(
          children: <Widget>[
            Container(
              height: 100,
              width: 100,
              // color: Colors.yellow,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(75.0)),
                  color: Color(0xffFFB03A)),
              child: Image(
                image: AssetImage(khadamatCard[index].imgsrc),
              ),
            ),
            Text(
              khadamatCard[index].title,
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
