// ignore_for_file: prefer_const_constructors

import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';


class HomePage extends StatefulWidget {
  @override
  State createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
  double num1 = 0, num2 = 0 , ans = 0;
  String ans2 = "";


  final TextEditingController t1 = TextEditingController(text: "0");
  final TextEditingController t2 = TextEditingController(text: "0");

  void doAddition() {
    setState(() {

      num1 = double.parse(t1.text);
      num2 = double.parse(t2.text);
      ans = num1 + num2;
    });
  }

  void doSub() {
    setState(() {
      num1 = double.parse(t1.text);
      num2 = double.parse(t2.text);
        ans = num1 -num2;
    });
  }

  void doMul() {
    setState(() {
      num1 = double.parse(t1.text);
      num2 = double.parse(t2.text);
      ans = num1 * num2;
    });
  }

  void doDiv() {
    setState(() {
      num1 = double.parse(t1.text);
      num2 = double.parse(t2.text);
      ans = num1 / num2;
    });
  }

  void doClear() {
    setState(() {
      t1.text = '0';
      t2.text = '0';
    });
  }




  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Sumit Calculator"),
      ),
      body: Container(
        padding: const EdgeInsets.all(80.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,

          children: <Widget>[

            Container(
              width: 400,
              height:200,
              child:  Text(

                "Output : $ans",
                textAlign: TextAlign.center,
                style: const TextStyle(
                    fontSize: 40.0,
                    height: 3.3,
                    // fontWeight: FontWeight.bold,
                    fontWeight: FontWeight.bold,
                    wordSpacing: 20,
                    shadows: [],
                    color: Colors.black),
              ),
              decoration: BoxDecoration(
                color: Colors.teal,
                borderRadius: BorderRadius.circular(20),

                // ignore: prefer_const_literals_to_create_immutables
                boxShadow:  [
                  BoxShadow(
                    color: Colors.black54,
                    blurRadius: 10,

                    offset: Offset(10, 10), // Shadow position
                  ),
                ],
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(top: 20.0),
            ),

            TextField(
              keyboardType: TextInputType.number,
              cursorColor: Colors.red,
              decoration:  InputDecoration(
                hintText: "Enter Number 1",
                border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20.5),
                ),
              ),
              controller: t1,

            ),

            Padding(
              padding: const EdgeInsets.only(top: 5.0),
            ),

            TextField(
              keyboardType: TextInputType.number,
              cursorColor: Colors.red,
              decoration:  InputDecoration(
                hintText: "Enter Number 2",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20.5),
                ),
              ),
              controller: t2,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 40.0),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                MaterialButton(
                  textColor: Colors.white,
                  color: Colors.green,
                  splashColor: Colors.red,
                  elevation: 5.0,
                  minWidth: 150,
                  onPressed: doAddition,
                  shape: StadiumBorder(),
                  child: Text(
                      " + ",
                    style: TextStyle(
                      fontSize: 25.0,
                    ),
                  ),
                ),

                MaterialButton(
                  textColor: Colors.white,
                  color: Colors.green,
                  splashColor: Colors.red,

                  elevation: 10.0,
                  minWidth: 150,
                  onPressed: doSub,
                  shape: StadiumBorder(),
                  child: Text(
                    " - ",
                    style: TextStyle(
                      fontSize: 25.0,
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20.0),
            ),


            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                MaterialButton(
                  textColor: Colors.white,
                  color: Colors.green,
                  splashColor: Colors.red,

                  elevation: 10.0,
                  minWidth: 150,
                  onPressed: doMul,
                  shape: StadiumBorder(),
                  child: Text(
                    " * ",
                    style: TextStyle(
                      fontSize: 25.0,
                    ),
                  ),
                ),
                MaterialButton(
                  textColor: Colors.white,
                  color: Colors.green,
                  splashColor: Colors.red,

                  elevation: 10.0,
                  minWidth: 150,
                  onPressed: doDiv,
                  shape: StadiumBorder(),
                  child: Text(
                    " / ",
                    style: TextStyle(
                      fontSize: 25.0,
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20.0),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                MaterialButton(
                  textColor: Colors.white,
                  color: Colors.lightBlue,
                  splashColor: Colors.black,

                  elevation: 10.0,
                  minWidth: 320,
                  onPressed: doClear,
                  shape: StadiumBorder(),
                  child: Text(
                    " CLEAR ",
                    style: TextStyle(
                      fontSize: 25.0,
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}