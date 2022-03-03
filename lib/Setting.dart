import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:yell_search/LogIn.dart';
import 'package:yell_search/SignIn.dart';


class Settings extends StatefulWidget {
  const Settings({Key? key}) : super(key: key);

  @override
  _SettingsState createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  createAlertDialoge(BuildContext context) {
    TextEditingController customController = TextEditingController();

    return showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Text('Distance units'),
            content: Column(
              children: [
                RadioListTile(
                  value: _value,
                  onChanged: (value) {},
                  title: Text('Miles'),
                  groupValue: _value,
                ),
                RadioListTile(
                  value: _value,
                  onChanged: (value) {},
                  title: Text('Kilometres'),
                  groupValue: _value,
                ),
              ],
            ),
            actions: [
              MaterialButton(
                  elevation: 10, child: Text('Ok'), onPressed: () {}),
            ],
          );
        });
  }

  createAlertDialogg(BuildContext context) {
    TextEditingController customController = TextEditingController();

    return showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Text('Delete Search History'),
            content: Text('Are you sure?'),
            actions: [
              GestureDetector(
                onTap: (){
                  Navigator.of(context).pop();
                },
                child: GestureDetector(
                  onTap: (){
                    Navigator.of(context).pop();
                  },
                  child: MaterialButton(
                      elevation: 10, child: Text('Back'), onPressed: () {}),
                ),
              ),
              MaterialButton(
                  elevation: 10, child: Text('Ok'), onPressed: () {}),
            ],
          );
        });
  }

  createAlertDialoggg(BuildContext context) {
    TextEditingController customController = TextEditingController();

    return showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Text('Delete Search History'),
            content: Text('Are you sure?'),
            actions: [
              MaterialButton(
                  elevation: 10, child: Text('CANCEL'), onPressed: () {}),
              MaterialButton(
                  elevation: 10, child: Text('OK'), onPressed: () {}),
            ],
          );
        });
  }

  String url = "https://www.google.com/";
  void _launchUrl() async{
    await canLaunch(url)? await launch(url) : throw 'some thing went wrong';
  }

  bool _value = true;
  bool isSwitch = false;
  bool isSwitched = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.yellow,
        centerTitle: true,
        title: Text(
          'Settings',
          style: TextStyle(
              color: Colors.black,  fontSize: 25),
        ),
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
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 15, right: 15, top: 10),
            child: Card(
              elevation: 5,
              child: Container(
                height: 130,
                width: double.infinity,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 10, left: 10),
                      child: Text(
                        'Your account',
                        style: TextStyle(color: Colors.grey, fontSize: 20),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10, left: 10),
                      child: GestureDetector(
                        onTap: (){
                          Navigator.of(context).push(MaterialPageRoute(builder: (context) => SignUp(),));
                        },
                        child: Text(
                          'Sign up',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10, right: 10),
                      child: Divider(
                        color: Colors.grey,
                        height: 30,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: GestureDetector(onTap: (){
                        Navigator.of(context).push(MaterialPageRoute(builder: (context) => LogIn(),));
                      },
                        child: Text(
                          'Log in',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15, right: 15, top: 10),
            child: Card(
              elevation: 5,
              child: Container(
                width: double.infinity,
                height: 500,
                child: Column(
                  children: [
                    ListTile(
                      title: Text(
                        'Preferences',
                        style: TextStyle(fontSize: 20, color: Colors.grey),
                      ),
                    ),
                    ListTile(
                      title: InkWell(
                          onTap: () {
                            return createAlertDialoge(context);
                          },
                          child: Text(
                            'Distance units',
                            style: TextStyle(fontSize: 20, color: Colors.black),
                          )),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10, right: 10),
                      child: Divider(
                        color: Colors.grey,
                        height: 30,
                      ),
                    ),
                    ListTile(
                      title: InkWell(
                          onTap: () {
                            return createAlertDialogg(context);
                          },
                          child: Text(
                            'Clear Search History',
                            style: TextStyle(fontSize: 20, color: Colors.black),
                          )),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10, right: 10),
                      child: Divider(
                        color: Colors.grey,
                        height: 30,
                      ),
                    ),
                    ListTile(
                      title: Text(
                        'Search history',
                        style: TextStyle(fontSize: 20, color: Colors.black),
                      ),
                      trailing: Switch(
                        value: isSwitch,
                        onChanged: (value) {
                          setState(() {
                            isSwitch = value;
                          });
                        },
                        activeColor: Colors.green,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10, right: 10),
                      child: Text(
                        'Yell will remember searches and display them in '
                            'your search history',
                        style: TextStyle(color: Colors.grey, fontSize: 15),
                      ),
                    ),
                    ListTile(
                      title: InkWell(
                        onTap: () {
                          return createAlertDialoggg(context);
                        },

                        child: Text(
                          'Clear recent activity',
                          style: TextStyle(fontSize: 20, color: Colors.black),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10, right: 10),
                      child: Divider(
                        color: Colors.grey,
                        height: 30,
                      ),
                    ),

                    ListTile(
                      title: Text(
                        'Recent activity',
                        style: TextStyle(fontSize: 20, color: Colors.black),
                      ),
                      trailing: Switch(
                        value: isSwitched,
                        onChanged: (value) {
                          setState(() {
                            isSwitched = value;
                          });
                        },
                        activeColor: Colors.green,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10, right: 10),
                      child: Text('Yell with remember the businesses you interact'
                          'with and display them on the home screen',
                        style: TextStyle(color: Colors.grey, fontSize: 13),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),

          Padding(
            padding: const EdgeInsets.only(left: 15, right: 15, top: 10),
            child: Card(
              elevation: 10,
              child: Container(
                height: 300,
                width: double.infinity,
                child:ListView(
                  children: [
                    ListTile(
                      title: Text(
                        'General',
                        style: TextStyle(fontSize: 20, color: Colors.grey),
                      ),
                    ),
                    ListTile(title: InkWell(
                      onTap: _launchUrl,
                      child: Text(
                        'Terms & Conditions',
                        style: TextStyle(fontSize: 20, color: Colors.black),
                      ),
                    ),),
                    Padding(
                      padding: const EdgeInsets.only(left: 10, right: 10),
                      child: Divider(
                        color: Colors.grey,
                        height: 30,
                      ),
                    ),

                    ListTile(title: InkWell(
                      onTap: _launchUrl,
                      child: Text(
                        'Privacy policy',
                        style: TextStyle(fontSize: 20, color: Colors.black),
                      ),
                    ),),
                    Padding(
                      padding: const EdgeInsets.only(left: 10, right: 10),
                      child: Divider(
                        color: Colors.grey,
                        height: 30,
                      ),
                    ),

                    ListTile(title: Text(
                      'App version',
                      style: TextStyle(fontSize: 20, color: Colors.black),
                    ),
                    trailing: Text('21.8.0(1)',style: TextStyle(color: Colors.black54),),
                    ),


                  ],
                ),
              ),
            ),
          )


        ],
      ),
    );
  }
}
