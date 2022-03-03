import 'package:flutter/material.dart';

class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {

  bool _value = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.yellow,
       title: Text('Sign Up',style: TextStyle(color: Colors.black,fontSize: 22),),
        centerTitle: true,
        leading: GestureDetector(onTap: (){
          Navigator.of(context).pop();
        },child: Icon(Icons.arrow_back_rounded,color: Colors.black,size: 25,)),
      ),
      body: Center(
        child: ListView(children: [
          Container(
            height: 50,
            child: Center(child: Text('Continue with:',style: TextStyle(color: Colors.black,fontSize: 22,),)),
          ),
          Container(
            height: 60,
            child: Center(
              child: Row(children: [
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
                        padding: const EdgeInsets.only(left:22.0),
                        child: Text('Facebook',style: TextStyle(color: Colors.white,fontSize: 18,),),
                      ),
                    ],),),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20.0),
                  child: Container(
                    height: 40,
                    width: 130,
                    decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(10)
                    ),
                    child: Center(child: Row(children: [

                      Padding(
                        padding: const EdgeInsets.only(left: 30.0),
                        child: Text('Google',style: TextStyle(color: Colors.white,fontSize: 18,),),
                      ),
                    ],),),
                  ),
                )
              ],),
            ),
          ),
          Container(
            height: 40,
            child: Center(child: Text('Or sign up with email',style: TextStyle(color: Colors.black,fontSize: 18,),)),
          ),
          Container(
            height: 80,
            child: Padding(
              padding: EdgeInsets.all(10),
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                  labelText: 'First Name',
                  labelStyle: TextStyle(color: Color(0xff515151)),
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
                  labelText: 'Last Name',
                  labelStyle: TextStyle(color: Color(0xff515151)),
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
                  labelText: 'Email address',
                  labelStyle: TextStyle(color: Color(0xff515151)),
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
          Padding(
            padding: const EdgeInsets.only(left: 8.0,top: 15),
            child: Text('Your password must be between 8-20 characters and include at least one upper and one lower case letter, one number, and one non-alphanumeric character.',style: TextStyle(color: Colors.white),),
          ),
          Padding(padding: EdgeInsets.all(20),
            child: Text('_________________________________________________',style: TextStyle(color: Colors.black.withAlpha(100)),),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 13.0),
            child: Row(children: [
              Padding(
                padding: const EdgeInsets.only(top: 8),
                child: Text('I agree to Yell`s ',style: TextStyle(color: Colors.black,fontSize: 16),),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 8),
                child: Text(' Terms and conditions',style: TextStyle(color: Colors.blue,fontSize: 16),),
              ),
              Padding(padding: EdgeInsets.only(left: 16),
                child:  Checkbox(
                  // activeColor: Colors.yellow,
                  //checkColor: Colors.blue,
                  // focusColor: Colors.white,
                  // hoverColor: Colors.white,
                  value: _value,
                  onChanged: (value) {
                    setState(() {
                      this._value=value!;
                    });
                  },),
              )
            ],),
          ),
          Padding(padding: EdgeInsets.all(20),
            child:  Container(
              height: 60,
              color: Colors.amber,
              child: Center(
                child: Text(
                  'Sign In',
                  style: TextStyle(color: Colors.white,fontSize: 20),
                ),
              ),
            ),
          )
        ],),
      ),
    );
  }
}
