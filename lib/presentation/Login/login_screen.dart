import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:get/get_core/src/get_main.dart';
import 'dart:async';

import 'package:kpie_assessment/presentation/Login/controller/controller.dart';
import 'package:kpie_assessment/presentation/homepagefour_screen/homepagefour_screen.dart';
//import 'Password Reset.dart';
//import 'Register.dart';



class LoginPage extends StatefulWidget {
  // LoginPage(String s);


  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {


  late String  _server_key = '1eca16c1127fcaf8266a3ae56dffb540f5eaac9f-889fe0e508bf0365111cc95114e29263-88061744';
  late String  _username = 'admin';
  late String  _password = '12345678';
  late String  _deviceType ='phone';

  final GlobalKey<FormState> _formkey = GlobalKey<FormState>();

  String? get title => null;

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
        home:Container(
            decoration: BoxDecoration(
             /** image: DecorationImage(
                  fit: BoxFit.contain,
                  colorFilter: ColorFilter.mode(Colors.lightBlue.withOpacity(0.2), BlendMode.dstATop),
                  image: AssetImage('')
              ) **/
            ),
            child:Scaffold(
                backgroundColor: Colors.transparent,
                body:

                ListView(
                    children: <Widget>[
                      SizedBox(height:30.0),
                      Padding(
                        padding: EdgeInsets.only(top: 13.0),
                        child:
                        Text('Login',
                          textAlign: TextAlign.center
                          ,style: TextStyle(
                              fontSize: 25.0,
                              fontWeight: FontWeight.bold,
                              color:  Colors.blue[400]
                          ),
                        ),
                      ),
                      SizedBox(height:200.0),

                      Form(
                          key: _formkey,
                          child: Column(
                            children: <Widget>[


                            /**  Padding(
                                padding: EdgeInsets.only(top: 15.0, left: 10.0, right: 10.0),
                                child:
                                TextFormField(
                                  style: TextStyle(
                                      color: Colors.white
                                  ),
                                  validator: (input) {
                                    if (input!.isEmpty) {
                                      return 'Please Enter server_key';
                                    }
                                  },
                                  onSaved: (input) => _server_key = input!,
                                  decoration: InputDecoration(
                                    labelText: 'Server_Key',
                                    labelStyle: TextStyle(
                                        fontStyle: FontStyle.normal,
                                        color:Colors.blue
                                    ),

                                  ),
                                ),
                              ),
                              **/
                              Padding(
                                padding: EdgeInsets.only(top: 15.0, left: 10.0, right: 10.0),
                                child:
                                TextFormField(
                                  style: TextStyle(
                                      color: Colors.white
                                  ),
                                  validator: (input) {
                                    if (input!.isEmpty) {
                                      return 'Please Enter Username';
                                    }
                                  },
                                  onSaved: (input) => _username = input!,
                                  decoration: InputDecoration(
                                    labelText: 'Username',
                                    labelStyle: TextStyle(
                                        fontStyle: FontStyle.normal,
                                        color:Colors.blue
                                    ),

                                  ),
                                ),
                              ),

                              Padding(
                                padding: EdgeInsets.only(top: 15.0, left: 10.0, right: 10.0),
                                child:

                                TextFormField(
                                  style: TextStyle(
                                      color: Colors.white
                                  ),
                                  validator: (input) {
                                    if (input!.length == 0) {
                                      return 'Please enter password';
                                    }
                                  },
                                  onSaved: (input) => _password = input!,
                                  decoration: InputDecoration(
                                      labelText: 'Password',
                                      labelStyle: TextStyle(
                                          color: Colors.blue
                                      )
                                  ),
                                  obscureText: true,
                                ),
                              ),

                         /**     Padding(
                                padding: EdgeInsets.only(top: 15.0, left: 10.0, right: 10.0),
                                child:
                                TextFormField(
                                  style: TextStyle(
                                      color: Colors.white
                                  ),
                                  validator: (input) {
                                    if (input!.isEmpty) {
                                      return 'Please Enter device type';
                                    }
                                  },
                                  onSaved: (input) => _deviceType = input!,
                                  decoration: InputDecoration(
                                    labelText: 'device_type',
                                    labelStyle: TextStyle(
                                        fontStyle: FontStyle.normal,
                                        color:Colors.blue
                                    ),

                                  ),
                                ),
                              ),
**/
                              SizedBox(height:35.0),
                              ElevatedButton(
                                onPressed:  SignIn,
                                child: Text('login'),
                              ),

                              SizedBox(height:45.0),
                              RichText(
                                  textAlign: TextAlign.center,
                                  text: TextSpan(
                                      style: TextStyle(color: Colors.blue[600], fontSize: 30.0, fontStyle: FontStyle.normal),
                                      children: <TextSpan>[
                                        TextSpan(
                                            text: "I don't have an account.",
                                            style: TextStyle(color:  Colors.blue[400],fontSize: 15.0, fontStyle: FontStyle.normal),
                                           /** recognizer: TapGestureRecognizer()..onTap=(){
                                              navigateToRegister();
                                            } **/
                                        )
                                      ]
                                  )
                              ),
                              SizedBox(height:15.0),

                              RichText(
                                  textAlign: TextAlign.center,
                                  text: TextSpan(
                                      style: TextStyle(color: Colors.blue[600], fontSize: 30.0, fontStyle: FontStyle.normal),
                                      children: <TextSpan>[
                                        TextSpan(
                                            text: "Forgot password.",
                                            style: TextStyle(color: Colors.blue[400],fontSize: 15.0, fontStyle: FontStyle.normal),
                                          /**  recognizer: TapGestureRecognizer()..onTap=(){
                                              Navigator.push(context, MaterialPageRoute(builder: (context) =>
                                                  PasswordReset(), fullscreenDialog: true));
                                            } **/
                                        )
                                      ]
                                  )
                              ),

                            ],
                          )
                      ),
                    ]
                )
            )
        )
    );
  }


  showAlertDialog(BuildContext context){
    AlertDialog alert= AlertDialog(contentPadding: EdgeInsets.all(5),
      content: new Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          CircularProgressIndicator(
            backgroundColor: Colors.lightBlue,
          ),
          Container(margin: EdgeInsets.only(left: 5),child: Text('please wait...'),),
        ],
      ),
    ) ;
    showDialog(context: context,
        barrierDismissible: false,
        builder: (BuildContext context){
          return alert;
        }
    );
  }

  Future SignIn() async {
    showAlertDialog(context);
    final formState = _formkey.currentState;
    if (formState!.validate()) {
      formState.save();


      String? baseUrl = 'https://fashionbiz.org/';

      final response = await http.post(Uri.parse('$baseUrl'),
          body: jsonEncode(
              {
                'server_key': _server_key,
                'username': _username,
                'password': _password,
                'device_type': _deviceType,
              }
          ),
        );

      if (response.statusCode == 401) {
        if (kDebugMode) {
          print('Raw Response Body: ${response.body}');
        }
      }
      if (response.statusCode == 200) {

        if (kDebugMode) {
          print('Raw Response Body: ${response.body}');
        }
        // Handle successful response
        if (kDebugMode) {
          print('login successful');
        }
        Get.off(() => HomepagefourScreen());
      }
      else {
        Get.back();
        if (kDebugMode) {
          print('login failed: ${response.body}');
        }
      }
      //if(context.mounted){Get.back();}
    }

    /**  showAlertDialog1(BuildContext context){
        AlertDialog(contentPadding: EdgeInsets.all(5),
        content: new Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
        Container(margin: EdgeInsets.only(left: 5),
        ),
        ],
        ),
        ) ;
        } **/

    /** Future<void> signIn() async {
        final formState = _formkey.currentState;
        if (formState!.validate()) {
        formState.save();

        try {
        showAlertDialog(context);
        await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: _email,
        password: _password
        );
        }
        on FirebaseAuthException catch (e) {

        showDialog(context: context,
        barrierDismissible: false,
        builder: (context) => AlertDialog(
        content: ListTile(
        title: Text('Error',
        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0,),
        ),
        subtitle: Text(e.code)
        ),
        titlePadding: EdgeInsets.only(bottom: 20.0) ,
        contentPadding: EdgeInsets.all(12.0),
        actions: <Widget>[
        Row(
        children: <Widget>[
        ElevatedButton(
        onPressed: (){
        Navigator.of(context).pop();
        Navigator.pop(context);
        },
        child:Text('OK')
        ),
        SizedBox(height: 35.0,)
        ],
        ),
        ],
        )
        );
        }
        }
        Navigator.pushReplacement(context,
        MaterialPageRoute(builder: (context) => HomePage('title'))) ;
        } **/
  }

}
