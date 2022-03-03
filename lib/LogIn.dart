import 'package:flutter/material.dart';

class LogIn extends StatefulWidget {
  @override
  _LogInState createState() => _LogInState();
}

class _LogInState extends State<LogIn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.yellow,
        title: Text('Log in',style: TextStyle(color: Colors.black,fontSize: 22),),
        centerTitle: true,
        leading: GestureDetector(onTap: (){
          Navigator.of(context).pop();
        },child: Icon(Icons.arrow_back_rounded,color: Colors.black,size: 25,)),
      ),
      body: Center(
        child: Column(children: [
          Padding(
            padding: const EdgeInsets.only(top: 16.0),
            child: Container(
              height: 80,
              child: Padding(
                padding: EdgeInsets.all(10),
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                    labelText: 'Email address',
                    labelStyle: TextStyle(color: Color(0xff515151)),
                  ),
                ),
              ),
            ),
          ),
          Container(
            height: 80,
            child: Padding(
              padding: EdgeInsets.all(10),
              child: TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                    labelText: 'Password',
                    labelStyle: TextStyle(color: Color(0xff515151)),
                    suffixIcon: Icon(Icons.remove_red_eye,color: Colors.black,)
                ),
              ),
            ),
          ),
          Container(
            height: 40,
            child: Text('Forget Password ?',style: TextStyle(color: Colors.blue,fontSize: 15,),),
          ),
          Padding(padding: EdgeInsets.all(20),
            child:  Container(
              height: 50,
              decoration: BoxDecoration(
                  color: Colors.yellow,
                  borderRadius: BorderRadius.circular(10)
              ),
              child: Center(
                child: Text(
                  'Log In',
                  style: TextStyle(color: Colors.black,fontSize: 22),
                ),
              ),
            ),
          ),
          SizedBox(height: 15,),
          Container(
            height: 50,
            child: Center(
              child: Row(children: [
                Padding(
                  padding: const EdgeInsets.only(left: 27.0),
                  child: Container(
                    height: 40,
                    width: 130,
                    decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(10)
                    ),
                    child: Center(child: Row(children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 26.0),
                        child: Text('Facebook',style: TextStyle(color: Colors.white,fontSize: 18,),),
                      ),
                    ],),),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 40.0),
                  child: Container(
                    height: 40,
                    width: 130,
                    decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(10)
                    ),
                    child: Center(child: Row(children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 35.0),
                        child: Text('Google',style: TextStyle(color: Colors.white,fontSize: 18,),),
                      ),
                    ],),),
                  ),
                )
              ],),
            ),
          ),
        ],),
      ),
    );
  }
}
