import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:yell_search/Setting.dart';

class Favourite extends StatefulWidget {
  const Favourite({Key? key}) : super(key: key);

  @override
  _FavouriteState createState() => _FavouriteState();
}

class _FavouriteState extends State<Favourite>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  var isPlay = true;
  @override
  void initState() {
    _animationController =
        AnimationController(vsync: this, duration: const Duration(seconds: 2))..repeat(reverse: true);
    super.initState();
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.yellow,
        title: Text(
          'Your favourites',
          style: TextStyle(fontSize: 22, color: Colors.black),
        ),
        centerTitle: true,
        leading: GestureDetector(
            onTap: () {
              Navigator.of(context).pop();
            },
            child: Icon(
              Icons.arrow_back,
              color: Colors.black,
              size: 27,
            )),
      ),
      body: GestureDetector
        (
        onTap: () {
          if (isPlay) {
            isPlay = false;
            _animationController.repeat();
          } else {
            isPlay = true;
            _animationController.stop();
          }
          setState(() {});
        },
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                  child: Text(
                'You do not have any favourites',
                style: TextStyle(color: Colors.black, fontSize: 22),
              )),
              Lottie.network(
                  'https://assets6.lottiefiles.com/packages/lf20_ZKUJ2j.json',
                  width: 180,
                  height: 180,
                  controller: _animationController),
              Padding(
                padding: const EdgeInsets.only(top: 28.0),
                child: Text(
                  'Open A business and tap the heart\n        icon to save it to this list',
                  style: TextStyle(color: Colors.black87, fontSize: 20),
                ),
              ),

            ],
          ),

        ),
      ),

    );
  }
}
