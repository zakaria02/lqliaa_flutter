import 'package:flutter/material.dart';


class NewsItem {
  NewsItem({this.title, this.body,this.imgsrc});

  final String title;
  final String body;
  final String imgsrc;
}

List<NewsItem> newsitems = <NewsItem>[
  NewsItem(
    title: "يوم دراسي حول التعليم",
    body: "نظمت جماعة القليعة بتنسيق مع المديرية الاقليمية لوزارة التربية الوطنية والتكوين المهني بانزكان أيت م...",
    imgsrc : 'assets/homeNews4.jpg',
  ),
  NewsItem(
    title: "بطولة الأحياء في كرة القدم",
    body: "تحت شعار التنشيط الرياضي دعامة أساسية للارتقاء بسلوك ومهارات الشباب وبشراكة مع مندوبية الشباب و الري...",
    imgsrc : 'assets/homeNews3.jpg',
  ),
  NewsItem(
    title: "مداومة بمصلحة التصديق على الامضاء",
    body: "يعلن رئيس المجلس الجماعي للقليعة الى كافة التلاميذ المقبلين على اجتياز امتحانات البكالوريا لسنة 2016...",
    imgsrc : 'assets/homeNews2.jpg',
  ),
  NewsItem(
    title: "استعدادات الدخول المدرسي",
    body: "استعدادا للدخول المدرسي المقبل 2016/2017 اتخذ المجلس الجماعي للقليعة مجموعة من التدابير و الاجراءات...",
    imgsrc : 'assets/homeNews1.jpg',
  ),
];


class News extends StatelessWidget {

  // final List<NewsItem> news;
  // News(this.news);

  @override
  Widget build(BuildContext context) {
    
    return Container(
      height: 400.0,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: newsitems
            .map((element) => Card(
                        child: Container(
                          padding: EdgeInsets.all(10.0),
                          width: 300,
                          child: Column(
                            children: <Widget>[
                              Image(
                                image: AssetImage(element.imgsrc),
                              ),
                              Text(
                                element.title,
                                style: TextStyle(
                                  color: Color(0xff2196F3),
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                element.body,
                                textDirection: TextDirection.rtl,
                              ),
                              OutlineButton(
                                onPressed: () {},
                                child: Text(
                                  'قراءة المزيد',
                                  style: TextStyle(
                                    color: Colors.red,
                                  ),
                                ),
                                borderSide: BorderSide(
                                  color: Colors.red,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ))
            .toList(),
      ),
    );
  }
}