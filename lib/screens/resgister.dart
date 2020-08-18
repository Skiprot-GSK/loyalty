import 'package:flutter/material.dart';
//import 'package:delgroce/scr/helpers/screen_navigation.dart';
//import 'package:delgroce/scr/helpers/style.dart';
//import 'package:delgroce/scr/providers/category.dart';
//import 'package:delgroce/scr/providers/product.dart';
//import 'package:delgroce/scr/providers/restaurant.dart';
//import 'package:delgroce/scr/providers/user.dart';
//import 'package:delgroce/scr/screens/login.dart';
import 'package:loyalty_points_app/widgets/custom_text.dart';
import 'package:loyalty_points_app/widgets/common.dart';
import 'package:loyalty_points_app/screens/login.dart';
//import 'package:delgroce/scr/widgets/loading.dart';
//import 'package:provider/provider.dart';
//
//import 'home.dart';

class Registration extends StatefulWidget {
  @override
  _RegistrationState createState() => _RegistrationState();
}

class _RegistrationState extends State<Registration> {
  final _key = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      key: _key,
      backgroundColor: white,
      body:SingleChildScrollView(
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 100,
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                children: <Widget>[
                  Text("Hello there!",style: TextStyle(fontSize: 35,fontWeight: FontWeight.bold),),
                ],
              ),
            ),

            SizedBox(
              height: 40,
            ),

            Padding(
              padding: const EdgeInsets.all(12),
              child: Container(
                decoration: BoxDecoration(
                    border: Border.all(color: grey),
                    borderRadius: BorderRadius.circular(15)
                ),
                child: Padding(padding: EdgeInsets.only(left: 10),
                  child: TextFormField(
//                    controller: authProvider.name,
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "Username",
                        icon: Icon(Icons.person)
                    ),
                  ),),
              ),
            ),


            Padding(
              padding: const EdgeInsets.all(12),
              child: Container(
                decoration: BoxDecoration(
                    border: Border.all(color: grey),
                    borderRadius: BorderRadius.circular(15)
                ),
                child: Padding(padding: EdgeInsets.only(left: 10),
                  child: TextFormField(
//                    controller: authProvider.email,
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "Emails",
                        icon: Icon(Icons.email)
                    ),
                  ),),
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(12),
              child: Container(
                decoration: BoxDecoration(
                    border: Border.all(color: grey),
                    borderRadius: BorderRadius.circular(15)
                ),
                child: Padding(padding: EdgeInsets.only(left: 10),
                  child: TextFormField(
//                    controller: authProvider.password,
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "Password",
                        icon: Icon(Icons.lock)
                    ),
                  ),),
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(10),
              child: GestureDetector(
                onTap: ()async{
                  print("BTN CLICKED!!!!");

                  changeScreenReplacement(context, LoginScreen());
                },
                child: Container(
                  decoration: BoxDecoration(
                      color: black,
                      border: Border.all(color: grey),
                      borderRadius: BorderRadius.circular(5)
                  ),
                  child: Padding(padding: EdgeInsets.only(top: 10, bottom: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        CustomText(text: "Continue", color: white, size: 22,)
                      ],
                    ),),
                ),
              ),
            ),




          ],
        ),
      ),
    );
  }
}
