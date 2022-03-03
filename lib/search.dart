import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'MyClipper.dart';
import 'View_All.dart';

class First extends StatefulWidget {
  const First({Key? key}) : super(key: key);
  @override
  _FirstState createState() => _FirstState();
}

class _FirstState extends State<First> {
  int _current = 0;
  final CarouselController _controller = CarouselController();

  List<Widget> _carousalList = [
    Image(image: AssetImage('Assets/pic1.jpg')),
    Image(image: AssetImage('Assets/pic5.jpg')),
    Image(image: AssetImage('Assets/pic6.jpg'))
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        leading: Icon(Icons.remove,color: Colors.white,),
        elevation: 0,
        backgroundColor: Colors.yellow,
        toolbarHeight: 80,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20.0),
            child: Container(
              alignment: Alignment.center,
              height: 2,
              width: 320,
              child: TextField(
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white)),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white)),
                  fillColor: Colors.white,
                  filled: true,
                  border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white)),
                  prefixIcon: Icon(
                    Icons.search,
                    size: 40,
                    color: Colors.black,
                  ),
                  hintText: 'Search yell',
                  labelStyle: TextStyle(fontSize: 25, color: Colors.black54),
                  suffixIcon: Icon(
                    Icons.keyboard_voice,
                    size: 30,
                    color: Colors.black,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),

      body: SingleChildScrollView(
        child: Column(
          children: [
            ClipPath(
              clipper: MyClipper(),
              child: Container(
                height: 258,
                color: Colors.yellow,
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.only(bottom: 60.0),
                    child: Column(
                      children: [
                        Container(
                          width: 302,
                          child: CarouselSlider(
                            items: _carousalList,
                            options: CarouselOptions(
                              onPageChanged: (index, reason) {
                                setState(() {
                                  _current = index;
                                });
                              },
                             enlargeCenterPage: true,
                                autoPlayCurve: Curves.easeInOutBack ,
                                autoPlay: true),
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: _carousalList.asMap().entries.map((entry) {
                            return GestureDetector(
                              onTap: () => _controller.animateToPage(entry.key),
                              child: Container(
                                width: 12.0,
                                height: 12.0,
                                margin: EdgeInsets.symmetric(vertical: 8.0, horizontal: 4.0),
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: (Theme.of(context).brightness == Brightness.dark
                                        ? Colors.white
                                        : Colors.black)
                                        .withOpacity(_current == entry.key ? 0.9 : 0.4)),
                              ),
                            );
                          }).toList(),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Card(
              elevation: 3,
              child: Container(
                height: 200,
                width: 330,
                color: Colors.white,
                child: Column(
                  children: [
                    ListTile(
                      leading: Text(
                        'Quick searches',
                        style: TextStyle(color: Colors.black, fontSize: 22),
                      ),
                      trailing: GestureDetector(
                        onTap: (){
                          Navigator.of(context).push(MaterialPageRoute(builder: (context) => ViewAll(),));
                        },
                        child: Text(
                          'View all',
                          style: TextStyle(color: Colors.blue, fontSize: 17),
                        ),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 40, top: 10),
                          child: Column(
                            children: [
                              ClipOval(
                                child: CircleAvatar(

                                    radius: 45,
                                    child: Image(fit: BoxFit.fitHeight,image: AssetImage('Assets/texi.png'),)),
                              ),
                              SizedBox(
                                height: 8,
                              ),
                              Text(
                                'Taxis',
                                style: TextStyle(
                                    color: Colors.black, fontSize: 17),
                              )
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 10, right: 40),
                          child: Column(
                            children: [
                              
                              ClipOval(
                                child: CircleAvatar(
                                    backgroundColor: Colors.black54,
                                   radius: 45,
                                    child:
                                    Image(image: AssetImage('Assets/pic12.jpg'),)),
                              ),

                              SizedBox(
                                height: 8,
                              ),
                              Text(
                                'Restaurant',
                                style: TextStyle(
                                    color: Colors.black, fontSize: 17),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Card(
              elevation: 3,
              child: Container(
                height: 350,
                width: 330,
                color: Colors.white,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(
                      'Project guides and inspiration',
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                    ),
                    Row(mainAxisAlignment: MainAxisAlignment.spaceAround,children: [
                      gridContainer(imageUrl: 'Assets/pic1.jpg', imageTitle: '     Home \nimprovement',),
                      gridContainer(imageUrl: 'Assets/pic4.jpg', imageTitle: '   Design \ninspiration')

                    ],),
                    Row(mainAxisAlignment: MainAxisAlignment.spaceAround,children: [
                      gridContainer(imageUrl: 'Assets/garden.png', imageTitle: 'Gardens'),
                      gridContainer(imageUrl: 'Assets/pic2.jpg', imageTitle: 'Project guide')

                    ],)

                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );

  }
  Widget  gridContainer({ required String imageUrl,
    required String imageTitle}
      ){
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Card(
          elevation: 2,
          child: Container(
            height: 90,
            width: 150,
            decoration: BoxDecoration(image:  DecorationImage(fit: BoxFit.fill,image: AssetImage(imageUrl)),),

          ),
        ),
        Text(imageTitle,style: TextStyle(fontSize: 20),)
      ],
    );
  }
}
