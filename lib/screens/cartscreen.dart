/* THIS IS BLANK FILE FOR FUTURE USE*/

import 'package:flutter/material.dart';
import 'package:flutterforbeginners2/utils/defaults.dart';

import 'navbar.dart';

class CartScreen extends StatefulWidget {
  CartScreen({Key? key}) : super(key: key);

  @override
  _CartScreenState createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  MyConfig _myconfig = MyConfig();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leadingWidth: 80,
        elevation: _myconfig.myElevation,
        leading: InkWell(
          onTap: () {},
          child: Image.asset(
            "assets/images/back.png",
            color: Colors.black,
          ),
        ),
        backgroundColor: Colors.white,
        title: Padding(
          padding: const EdgeInsets.only(left: 5.0),
          child: Text(
            "Cart",
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
          ),
        ),
      ),
      body:Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 230,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20)
                  ),
                  child: Card(
                    elevation: 10,
                    child: Image.asset("assets/images/cart.jpg"),
                  ),
                ),
                Container(
              child: Text("Your cart is empty!",
              style: TextStyle(fontWeight: FontWeight.bold),),
             ),
             SizedBox(
                height: 15,
              ),

             Container(
              child: Text("Add items to it now"),
             ),

             SizedBox(
                height: 15,
              ),

              
              Container(
                child:  ElevatedButton(
              onPressed: () {
                 
                         Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Home()),
                      );
                      
              },
              child: Text('ORDER NOW'),
              style: ElevatedButton.styleFrom(primary: Colors.amber),
              
            ),
              )
              ],
            )
          ],
        ),
      ),
      
    );
  }
}
