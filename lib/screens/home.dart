import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
//import 'package:delgroce/scr/helpers/screen_navigation.dart';
//import 'package:delgroce/scr/helpers/style.dart';
//import 'package:delgroce/scr/providers/category.dart';
//import 'package:delgroce/scr/providers/product.dart';
//import 'package:delgroce/scr/providers/restaurant.dart';
//import 'package:delgroce/scr/providers/user.dart';
//import 'package:delgroce/scr/screens/login.dart';
import 'package:loyalty_points_app/widgets/custom_text.dart';
import 'package:loyalty_points_app/widgets/common.dart';
import 'package:loyalty_points_app/widgets/custom_appbar.dart';
import 'package:loyalty_points_app/widgets/search.dart';
//import 'package:delgroce/scr/widgets/loading.dart';
//import 'package:provider/provider.dart';
//
//import 'home.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  SafeArea(
        child: ListView(
          children: <Widget>[
//           Custom App bar
            CustomAppBar(),

//          Search Text field
            Search(),

//            featured products
            Row(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(14.0),
                  child: Container(
                      alignment: Alignment.centerLeft,
                      child: new Text('Featured products')),
                ),
              ],
            ),
//            FeaturedProducts(),

//            Text(appProvider.featureProducts.length.toString(), style: TextStyle(color: Colors.black),),
//          recent products
            Row(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(14.0),
                  child: Container(
                      alignment: Alignment.centerLeft,
                      child: new Text('Recent products')),
                ),
              ],
            ),

//            ProductCard(
//              brand: 'SantosBrand',
//              name: 'Lux Blazer',
//              price: 24.00,
//              onSale: true,
//              picture: '',
//            ),
          ],
        ),
      ),
    );
  }
}
