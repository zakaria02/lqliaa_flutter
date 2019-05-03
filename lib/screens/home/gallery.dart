import 'package:flutter/material.dart';

class Pictures {
  String tag;
  String src;

  Pictures({this.tag, this.src});
}

List<Pictures> pics = <Pictures>[
  Pictures(tag: 'gal1', src: 'assets/lqliaa_img_1.jpg'),
  Pictures(tag: 'gal2', src: 'assets/lqliaa_img_2.jpg'),
  Pictures(tag: 'gal3', src: 'assets/lqliaa_img_3.jpg'),
  Pictures(tag: 'gal4', src: 'assets/lqliaa_img_4.jpg'),
  Pictures(tag: 'gal5', src: 'assets/lqliaa_img_5.jpg'),
  Pictures(tag: 'gal6', src: 'assets/lqliaa_img_6.jpg'),
  Pictures(tag: 'gal7', src: 'assets/lqliaa_img_7.jpg'),
  Pictures(tag: 'gal9', src: 'assets/lqliaa_img_9.jpg'),
  Pictures(tag: 'gal10', src: 'assets/lqliaa_img_10.jpg')
];



class Images extends StatelessWidget {
  int index;
  Images(this.index);
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        child: Hero(
          tag: pics[index].tag,
          child: Image(
            image: AssetImage(pics[index].src),
          ),
        ),
        onTap: () {
          Navigator.push(context, MaterialPageRoute(builder: (_) {
            return DetailScreen(index);
          }));
        },
      );
    
  }
}

class DetailScreen extends StatelessWidget {
  int index;
  DetailScreen(this.index);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        child: Center(
          child: Hero(
            tag: pics[index].tag,
            child: Image(
              image:AssetImage(pics[index].src),
            ),
          ),
        ),
        onTap: () {
          Navigator.pop(context);
        },
      ),
    );
  }
}