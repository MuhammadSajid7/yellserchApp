
import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:yell_search/Setting.dart';
import 'package:yell_search/favourite.dart';
import 'package:yell_search/search.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Splashscreen(),));
}
class Splashscreen extends StatefulWidget {
  const Splashscreen({Key? key}) : super(key: key);

  @override
  _SplashscreenState createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation animation;
  Tween<double> tween = Tween(begin: 0, end: 1);
  @override
  void initState() {
    super.initState();
    _animationController =
    AnimationController(vsync: this, duration: const Duration(seconds: 4));
    animation = tween.animate(_animationController);
    _animationController.addStatusListener((status) {
      setState(() {

      });
    });
    Timer(Duration(seconds: 4), (){
      Navigator.of(context).push(MaterialPageRoute(builder: (context) => MyHomePage(),));
    });
  }
  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow,
      body: Center(child:TweenAnimationBuilder<double>(
        tween: tween,
        duration: const Duration(seconds: 4),
        builder: (context, value, child) {
          return Transform.scale(scale: value,child: child,);

        },
        child: Container(
          height: 100,
          width:100,
          child: Image(image: AssetImage('Assets/yellicon.png'),)

        ),
      )),
    );
  }
}



class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int currentIndex = 0;
  List <TabContent> tabContent = [
    TabContent(First()),
    TabContent(Favourite()),
    TabContent(Settings()),

  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(

        body:  tabContent[currentIndex].content,
        bottomNavigationBar:
            BottomNavigationBar(
                onTap: (index){
                  setState(() {
                    currentIndex = index;
                  });
                },
                items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(
              Icons.search,
              size: 35,
              color: Colors.black,
            ),
            label: 'Search',
          ),
                  BottomNavigationBarItem(
                    icon: Icon(
                      Icons.favorite,
                      size: 35,
                      color: Colors.black,
                    ),
                    label: 'Favorite',
                  ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.settings,
              size: 35,
              color: Colors.black,
            ),
            label: 'Settings',
          ),
        ]));
  }

}
class TabContent{
  Widget content;
  TabContent(this.content);
}
