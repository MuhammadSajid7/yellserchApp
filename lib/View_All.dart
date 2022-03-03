import 'package:flutter/material.dart';

class ViewAll extends StatefulWidget {
  const ViewAll({Key? key}) : super(key: key);

  @override
  _ViewAllState createState() => _ViewAllState();
}

class _ViewAllState extends State<ViewAll> {
  List list = [
    AssetImage('Assets/pic9.jpg'),
    AssetImage('Assets/pic10.jpg'),
    AssetImage('Assets/pic23.jpg'),
    AssetImage('Assets/pic12.jpg'),
    AssetImage('Assets/pic13.jpg'),
    AssetImage('Assets/pic14.jpg'),
    AssetImage('Assets/pic15.jpg'),
    AssetImage('Assets/pic16.jpg'),
    AssetImage('Assets/pic17.jpg'),
    AssetImage('Assets/pic18.jpg'),
    AssetImage('Assets/pic19.jpg'),
    AssetImage('Assets/pic20.jpg'),
    AssetImage('Assets/pic15.jpg'),
    AssetImage('Assets/pic16.jpg'),
    AssetImage('Assets/pic17.jpg'),
    AssetImage('Assets/pic18.jpg'),
    AssetImage('Assets/pic19.jpg'),
    AssetImage('Assets/pic20.jpg'),
    AssetImage('Assets/pic15.jpg'),
    AssetImage('Assets/pic16.jpg'),
    AssetImage('Assets/pic17.jpg'),
    AssetImage('Assets/pic18.jpg'),
    AssetImage('Assets/pic19.jpg'),
    AssetImage('Assets/pic20.jpg'),

  ];
  List _list = [
    'Taxis',
    'Takeaways',
    'Pubs',
    'Restaurants',
    'Plumbers',
    'Hairdressers',
    'Painters &\nDecorators',
    'Supermarkets',
    'Chinese\nTakeaways',
    'Dentists',
    'Builders\nMerchants',
    'Plumbers\nMerchants',
    'Painters &\nDecorators',
    'Supermarkets',
    'Chinese\nTakeaways',
    'Dentists',
    'Builders\nMerchants',
    'Plumbers\nMerchants',
    'Painters &\nDecorators',
    'Supermarkets',
    'Chinese\nTakeaways',
    'Dentists',
    'Builders\nMerchants',
    'Plumbers\nMerchants',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.yellow,
          title: Text(
            'Categories',
            style: TextStyle(color: Colors.black, fontSize: 22),
          ),
          leading: GestureDetector(
              onTap: (){
                Navigator.of(context).pop();
              },
              child: Icon(Icons.arrow_back,color: Colors.black,size: 30,)),
          centerTitle: true,
        ),
        body: CustomScrollView(
          slivers: [
            SliverGrid(
                delegate: SliverChildBuilderDelegate(
                      (context, index) {
                    return Container(
                      child: Center(
                        child: Column(
                          children: [
                            CircleAvatar(
                              radius: 35,
                              backgroundImage: list[index],
                            ),
                            SizedBox(height: 3,),
                            Text(_list[index])
                          ],
                        ),
                      ),
                    );
                  },
                  childCount: _list.length,
                ),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    crossAxisSpacing: 5.2,
                    childAspectRatio: 1.0,
                    mainAxisSpacing: 5.0)),
          ],
        ));
  }
}

