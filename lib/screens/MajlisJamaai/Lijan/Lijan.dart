import 'package:flutter/material.dart';
import '../LijanSliverBar.dart';

class Lijan extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'اللجان',
          textDirection: TextDirection.rtl,
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: NestedScrollView(
        headerSliverBuilder: (context, innerBoxIsScrolled) {
          return <Widget>[
            new SliverLijan('اللجان'),
          ];
        },
        body: ListView(
          shrinkWrap: true,
          padding: EdgeInsets.all(10.0),
          children: <Widget>[
            LijanExpansion(0),
            LijanExpansion(1),
            LijanExpansion(2),
            LijanExpansion(3),
            LijanExpansion(4),
          ],
        ),
      ),
    );
  }
}



class LijanMembers{
  String expansionTitle;
  String member1;
  String member2;
  String member3;
  String member4;
  String member5;

  LijanMembers({this.expansionTitle,this.member1,this.member2,this.member3,this.member4,this.member5});

}

List<LijanMembers> lijanMembers =<LijanMembers>[
  LijanMembers(expansionTitle:'اللجنة المكلفة بالتعمير وإعداد التراب والبيئة',member1: 'السيد عبد الله موتمر',member2:'السيد الحسين دجاج' ,member3: 'السيد أحمد ابن سعيد',member4: 'السيد العربي الكريني',member5:'السيد خليل صويلح'),
  LijanMembers(expansionTitle:'اللجنة المكلفة بالتنمية البشرية والتنمية المستدامة، المنبثقة عن المجلس الجماعي القليعة',member1:'السيدة الحسنية رفيع' ,member2:'السيد محمد سافع بن ابراهيم' ,member3:'السيد العربي الخليل' ,member4:'السيدة مينة دجاج' ,member5: 'السيدة رقية أومنصور',),
  LijanMembers(expansionTitle:'اللجنة المكلفة بالشؤون الاجتماعية والثقافية والرياضية',member1:'السيد لحفظ الخليل' ,member2: 'السيد الحسان المهدي',member3: 'السيد محمد الرامي',member4:'السيد محمد الجهبلي' ,member5:'السيد الحسين المليح' ,),
  LijanMembers(expansionTitle:'لجنة الميزانية والشؤون المالية والبرمجة',member1:'السيدة رامية اسكيكة' ,member2: 'السيد محمد العايدي',member3:'السيد محمد أكثير' ,member4:'السيد محمد بلعسري' ,member5:'السيد محمد سافع بن عبد الله' ,),
  LijanMembers(expansionTitle:'لجنة المرافق العمومية والخدمات',member1:'السيد عبد الرحمن رزقي' ,member2:'السيد عبد الله أوبرايم' ,member3:'السيد لحسن المنصوري' ,member4:'السيد علي سالم الصلاي' ,member5: 'السيد عبد الله بايرات',),
];


class LijanExpansion extends StatelessWidget {
  int index;
  LijanExpansion(this.index);
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xff7049BA),
      margin: EdgeInsets.all(10.0),
      child: ExpansionTile(
        
      
                title: Text(
                  lijanMembers[index].expansionTitle,
                  textDirection: TextDirection.rtl,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontSize: 12,
                  ),
                ),
                children: <Widget>[
                  Container(
                    color: Colors.white,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: <Widget>[
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: <Widget>[
                              Text(
                                'رئيس اللجنة',
                                textDirection: TextDirection.rtl,
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xFF673AB7)),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: <Widget>[
                              Container(
                                margin:EdgeInsets.symmetric(vertical:10),
                                padding: EdgeInsets.only(right: 10),
                                decoration: BoxDecoration(border: Border(right: BorderSide(color: Color(0xFFFFB03A),width: 3))),
                                  child: Text(lijanMembers[index].member1,
                                      textDirection: TextDirection.rtl)),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: <Widget>[
                              Text(
                                'نائب الرئيس',
                                textDirection: TextDirection.rtl,
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xFF673AB7)),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: <Widget>[
                              Container(
                                margin:EdgeInsets.symmetric(vertical:10),
                                padding: EdgeInsets.only(right: 10),
                                decoration: BoxDecoration(border: Border(right: BorderSide(color: Color(0xFFFFB03A),width: 3))),
                                  child: Text(lijanMembers[index].member2,
                                      textDirection: TextDirection.rtl)),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: <Widget>[
                              Text(
                                'الأعضاء',
                                textDirection: TextDirection.rtl,
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xFF673AB7)),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: <Widget>[
                              Container(
                                padding: EdgeInsets.only(right: 10),
                                decoration: BoxDecoration(border: Border(right: BorderSide(color: Color(0xFFFFB03A),width: 3))),
                                  child: Text(lijanMembers[index].member3,
                                      textDirection: TextDirection.rtl)),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: <Widget>[
                              Container(
                                padding: EdgeInsets.only(right: 10),
                                decoration: BoxDecoration(border: Border(right: BorderSide(color: Color(0xFFFFB03A),width: 3))),
                                  child: Text(lijanMembers[index].member4,
                                      textDirection: TextDirection.rtl)),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: <Widget>[
                              Container(
                                padding: EdgeInsets.only(right: 10),
                                decoration: BoxDecoration(border: Border(right: BorderSide(color: Color(0xFFFFB03A),width: 3))),
                                  child: Text(lijanMembers[index].member5,
                                      textDirection: TextDirection.rtl)),
                            ],
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
    );
  }
}