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


  late String  _username;
  late String  _password;
 // late String  _deviceType;
  late String  key = '1eca16c1127fcaf8266a3ae56dffb540f5eaac9f-889fe0e508bf0365111cc95114e29263-88061744';

  final GlobalKey<FormState> _formkey = GlobalKey<FormState>();
  String? get title => null;

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
        home:Container(
            decoration: BoxDecoration(
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
                                onPressed: (){
                                 SignIn();
                              },
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

  showAlertDialog1(BuildContext context){
    AlertDialog alert= AlertDialog(contentPadding: EdgeInsets.all(5),
      content: new Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
         Text('please check your login details and try again'),
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
  // showAlertDialog(context);
    final formState = _formkey.currentState;
    if (formState!.validate()) {
      formState.save();

      String? baseUrl = 'https://fashionbiz.org/';

      final response = await http.post(Uri.parse('${baseUrl}wowwonder/api/auth'),

          body: jsonEncode(
              {
                'server_key': key,
                'username': _username,
                'password': _password,
                'device_type': 'phone',
              }
          ),
        );
      if (response.statusCode == 401) {
        if (kDebugMode) {
          print('Raw Response Body: ${response.body}');
        }
      }
      showAlertDialog(context);
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
      // showAlertDialog1(context);
        if (kDebugMode) {
          print('login failed: ${response.body}');
        }
      }
      //if(context.mounted){Get.back();}
    }


  }

}
