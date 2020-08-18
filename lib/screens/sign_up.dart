import 'package:flutter/material.dart';
//import 'package:delgroce/scr/helpers/screen_navigation.dart';
//import 'package:delgroce/scr/helpers/style.dart';
//import 'package:delgroce/scr/providers/category.dart';
//import 'package:delgroce/scr/providers/product.dart';
//import 'package:delgroce/scr/providers/restaurant.dart';
//import 'package:delgroce/scr/providers/user.dart';
//import 'package:delgroce/scr/screens/login.dart';
import 'package:loyalty_points_app/widgets/custom_text.dart';
import 'package:loyalty_points_app/screens/resgister.dart';
import '../widgets/common.dart';
//import 'package:delgroce/scr/widgets/loading.dart';
//import 'package:provider/provider.dart';
//
//import 'home.dart';

class RegistrationScreen extends StatefulWidget {
  @override
  _RegistrationScreenState createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
  final _key = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
//    final authProvider = Provider.of<UserProvider>(context);
//    final categoryProvider = Provider.of<CategoryProvider>(context);
//    final restaurantProvider = Provider.of<RestaurantProvider>(context);
//    final productProvider = Provider.of<ProductProvider>(context);

    return Scaffold(
//      key: _key,
//      backgroundColor: white,
//      authProvider.status == Status.Authenticating? Loading() :
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 100,
            ),
            Image.asset('images/logo.jpg', width: 100, height: 250,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
//                Image.asset('assets/logo.jpg', width: 100, height: 100,),
              ],
            ),

            SizedBox(
              height: 70,
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                children: <Widget>[
                  Text("Welcome",style: TextStyle(fontSize: 35,fontWeight: FontWeight.bold),),
                ],
              ),
            ),

            Padding(
              padding: const EdgeInsets.fromLTRB(0,0,0,50),
              child: Row(
                children: <Widget>[
                  Text("Use your loyality points from all your cards in one place",),
                ],
              ),
            ),






            Padding(
              padding: const EdgeInsets.all(10),
              child: GestureDetector(
                onTap: ()async{
                  print("BTN CLICKED!!!!");
                  print("BTN CLICKED!!!!");
                  print("BTN CLICKED!!!!");
                  print("BTN CLICKED!!!!");
                  print("BTN CLICKED!!!!");
                  print("BTN CLICKED!!!!");
                  changeScreenReplacement(context, Registration());

                },
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.black,
                      border: Border.all(color: Colors.grey),
                      borderRadius: BorderRadius.circular(5)
                  ),
                  child: Padding(padding: EdgeInsets.only(top: 10, bottom: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        CustomText(text: "EMAIL", color: white, size: 22,)
                      ],
                    ),),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: GestureDetector(
                onTap: ()async{
                  print("BTN CLICKED!!!!");
                  print("BTN CLICKED!!!!");
                  print("BTN CLICKED!!!!");
                  print("BTN CLICKED!!!!");
                  print("BTN CLICKED!!!!");
                  print("BTN CLICKED!!!!");


                },
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(color: Colors.grey),
                      borderRadius: BorderRadius.circular(5)
                  ),
                  child: Padding(padding: EdgeInsets.only(top: 10, bottom: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        CustomText(text: "GOOGLE", color: black, size: 22,)
                      ],
                    ),),
                ),
              ),
            ),
            GestureDetector(
              onTap: (){
//                changeScreen(context, LoginScreen());
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  CustomText(text: "Already have an account? Login", size: 20,),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
