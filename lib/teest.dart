import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:google_fonts_arabic/fonts.dart';
import 'screens/drawer.dart';
import 'screens/home/home.dart';
import 'screens/home/Expansion1.dart';
import 'screens/home/Expansion2.dart';
import 'screens/home/homeNewsCards.dart';
import 'screens/home/gallery.dart';

main() => runApp(Home());

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Color(0xff7049BA),
        primaryColorBrightness: Brightness.light,
        fontFamily: ArabicFonts.Cairo,
      ),
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            'الرئيسية',
            style: TextStyle(color: Colors.white),
          ),
          iconTheme: new IconThemeData(color: Colors.white),
        ),
        body: NestedScrollView(
          headerSliverBuilder: (context, innerBoxIsScrolled) {
            return <Widget>[
              new SliverHome(),
            ];
          },
          body: ListView(
            shrinkWrap: true,
            padding: EdgeInsets.all(15.0),
            children: <Widget>[
              Column(
                children: <Widget>[
                  Container(
                    color: Color(0xffFFB03A),
                    padding: EdgeInsets.symmetric(vertical: 10, horizontal: 50),
                    margin: EdgeInsets.all(10.0),
                    child: Column(
                      children: <Widget>[
                        Text(
                          'الاخبار الرسمية لجماعة القليعة',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 20),
                        ),
                        RaisedButton(
                          onPressed: () {},
                          child: Text('اضغط هنا',
                              style: TextStyle(color: Colors.white)),
                          color: Color(0xff7049BA),
                        )
                      ],
                    ),
                  ),
                  Column(
                    children: <Widget>[
                      new Expansion1(),
                      new Expansion2(),
                    ],
                  ),
                ],
              ),
              Container(
                width: 150,
                height: 150,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/lqliaa_img_8.png'),
                    fit: BoxFit.cover,
                  ),
                ),
                padding: EdgeInsets.symmetric(vertical: 10, horizontal: 40),
                margin: EdgeInsets.only(top: 15),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      'مدينة القليعة',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                    ),
                    Text(
                      '" جميعا من أجل بيئة نظيفة و سليمة "',
                      style: TextStyle(color: Colors.white, fontSize: 16),
                    ),
                  ],
                ),
              ),
              Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(top: 15.0),
                      child: Text(
                        'برامج و مبادرات',
                        style: TextStyle(
                            color: Color(0xff7049BA),
                            fontWeight: FontWeight.bold,
                            fontSize: 18),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 10.0),
                      child: Text(
                        'يعتكف المجلس الجماعي لمدينة القليعة على ترسيخ مبدأ التطوع و خدمة الصالح العام عن طريق تدعيم أنشطة و مبادرات تستفيد منها ساكنة القليعة',
                        textDirection: TextDirection.rtl,
                      ),
                    ),
                  ],
                ),
              ),
              //-----------//
              News(),
              Container(
                padding: EdgeInsets.only(top: 15),
                child: Text(
                  'إنبثقت الجماعة الحضرية للقليعة عن الجماعة الحضرية لأيت ملول, إثر التقسيم الجماعي لسنة 1992, حيث كونت مجالا قرويا تتوسطه أنوية سكنية قديمة تطورت بشكل ملحوظ إلى أن كونت مركزا بمقومات حضرية',
                  textDirection: TextDirection.rtl,
                ),
              ),
              Container(
                child: Column(
                  children: <Widget>[
                    Text(
                      'صور المدينة',
                      style: TextStyle(
                          color: Color(0xff7049BA),
                          fontWeight: FontWeight.bold,
                          fontSize: 18),
                    ),
                  ],
                ),
              ),
              //====Gallery===//
              Container(
                  padding: EdgeInsets.all(10.0),
                  child: Column(
                    children: <Widget>[
                      Card(child:Images(0)),
                      Card(child:Images(1)),
                      Card(child:Images(2)),
                      Card(child:Images(3)),
                      Card(child:Images(4)),
                      Card(child:Images(5)),
                      Card(child:Images(6)),
                      Card(child:Images(7)),
                      Card(child:Images(8)),
                    ],
                  ))
            ],
          ),
        ),
        endDrawer: RightDrawer(),
      ),
    );
  }

  // _launchURL(url) async {
  //   if (await canLaunch(url)) {
  //     await launch(url);
  //   } else {
  //     throw 'Could not launch $url';
  //   }
  // }
}

// Call the Dialog.
