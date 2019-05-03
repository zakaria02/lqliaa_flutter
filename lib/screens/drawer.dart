import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';
import 'MajlisJamaai/Lijan/Lijan.dart';
import 'MajlisJamaai/Maktab/maktab.dart';

class RightDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            child: Container(
              child: Column(
                children: <Widget>[
                  Image.asset('assets/logo.png'),
                  Text(
                    'جماعة القليعة',
                    textDirection: TextDirection.rtl,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            decoration: BoxDecoration(
              color: Colors.orange,
            ),
          ),
          ListTile(
            title: Text(
              'الرئيسية',
              textDirection: TextDirection.rtl,
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            title: Text(
              'مدينتكم',
              textDirection: TextDirection.rtl,
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            title: ExpansionTile(
              title: Text(
                'المجلس الجماعي',
                textDirection: TextDirection.rtl,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              children: <Widget>[
                Column(
                  children: <Widget>[
                    Column(
                      children: <Widget>[
                        FlatButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Lijan()));
                          },
                          child:
                              Text('اللجان', textDirection: TextDirection.rtl),
                        ),
                        FlatButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Maktab()));
                          },
                          child:
                              Text('المكتب', textDirection: TextDirection.rtl),
                        ),
                        FlatButton(
                          onPressed: () {},
                          child:
                              Text('الرئيس', textDirection: TextDirection.rtl),
                        ),
                        FlatButton(
                          onPressed: () {},
                          child: Text('دورات المجلس',
                              textDirection: TextDirection.rtl),
                        ),
                        FlatButton(
                          onPressed: () {},
                          child: Text('المجلس الجماعي',
                              textDirection: TextDirection.rtl),
                        ),
                      ],
                    ),
                  ],
                )
              ],
            ),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            title: Text(
              'المصالح الجماعية',
              textDirection: TextDirection.rtl,
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            title: Text(
              'وثائق ادارية',
              textDirection: TextDirection.rtl,
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            title: Text(
              'الخدمات الإلكترونية',
              textDirection: TextDirection.rtl,
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            title: Text(
              'إتصل بنا',
              textDirection: TextDirection.rtl,
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ButtonBar(
            alignment: MainAxisAlignment.center,
            children: <Widget>[
              IconButton(
                  color: Color(0xff38569A),
                  icon: Icon(FontAwesomeIcons.facebook),
                  onPressed: () {
                    launch('https://www.facebook.com/CommuneLqliaa');
                  }),
              IconButton(
                color: Colors.red,
                icon: Icon(FontAwesomeIcons.youtube),
                onPressed: () {
                  launch(
                      'https://www.youtube.com/channel/UCc4kmZO-hh2NVyNKnfMFAYg');
                },
              ),
              IconButton(
                color: Colors.blue,
                icon: Icon(FontAwesomeIcons.twitter),
                onPressed: () {
                  launch('https://twitter.com/CommuneLqliaa');
                },
              ),
              IconButton(
                color: Colors.red,
                icon: Icon(FontAwesomeIcons.googlePlus),
                onPressed: () {
                  launch(
                      'https://plus.google.com/112223728861905797954/about?gmbpt=true&hl=fr');
                },
              ),
            ],
          )
        ],
      ),
    );
  }
}
