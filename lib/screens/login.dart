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
import 'package:loyalty_points_app/screens/home.dart';
//import 'package:delgroce/scr/widgets/loading.dart';
//import 'package:provider/provider.dart';
//
//import 'home.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _key = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {


    return Scaffold(
      key: _key,
      backgroundColor: white,
      body:  SingleChildScrollView(
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 100,
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
//                Image.asset("images/logo.png", width: 120, height: 120,),
                Text("Welcome back!",style: TextStyle(fontSize: 35,fontWeight: FontWeight.bold),),
              ],
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
//                    controller: authProvider.email,
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "Email",
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
//                  if(!await authProvider.signIn()){
//                    _key.currentState.showSnackBar(
//                        SnackBar(content: Text("Login failed!"))
//                    );
//                    return;
//                  }
//                  categoryProvider.loadCategories();
//                  restaurantProvider.loadSingleRestaurant();
//                  productProvider.loadProducts();
//                  authProvider.clearController();
                  changeScreenReplacement(context, Home());
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
                        CustomText(text: "Login", color: white, size: 22,)
                      ],
                    ),),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  Text("Forgot Password?",),
                ],
              ),
            ),
//            GestureDetector(
//              onTap: (){
//                changeScreen(context, Home());
//              },
//              child: Row(
//                mainAxisAlignment: MainAxisAlignment.center,
//                children: <Widget>[
//                  CustomText(text: "Login", size: 20,),
//                ],
//              ),
//            ),
//            Padding(
//              padding: const EdgeInsets.all(10),
//              child: GestureDetector(
//                onTap: ()async{
//                  print("BTN CLICKED!!!!");
//
//                  changeScreen(context, Home());
//                },
//                child: Container(
//                  decoration: BoxDecoration(
//                      color: black,
//                      border: Border.all(color: grey),
//                      borderRadius: BorderRadius.circular(5)
//                  ),
//                  child: Padding(padding: EdgeInsets.only(top: 10, bottom: 10),
//                    child: Row(
//                      mainAxisAlignment: MainAxisAlignment.center,
//                      children: <Widget>[
//                        CustomText(text: "LOGIN", color: white, size: 22,)
//                      ],
//                    ),),
//                ),
//              ),
//            ),

          ],
        ),
      ),
    );
  }
}
