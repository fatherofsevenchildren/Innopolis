import 'package:flutter/material.dart';

void main() => runApp(Lab1());

/// this is your APP Main screen configuration
class Lab1 extends StatelessWidget {
  Lab1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LAb1HomePage(),
    );
  }
}

/// this is a template to start building a UI
/// to start adding any UI you want change what comes after the [ body: ] tag below
class LAb1HomePage extends StatelessWidget {
  LAb1HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xfff4f4f4),
      /*******************--[focus here 🧐]--*******************/
      appBar: AppBar(
        leading: const Icon(Icons.stars),
        title: const Text('Lab 1'),
        backgroundColor: Colors.teal,
        elevation: 4,
      ),
      body: myWidget(),
      /*******************--[focus here 🧐]--*******************/
    );
  }

  Widget myWidget() {
    return SingleChildScrollView(
      child: Column(
        children: [
          /*******************--[focus here 🧐]--*******************/
          SizedBox(
            height: 25,
          ),
          exercise1(),
          SizedBox(
            height: 25,
          ),
          exercise2(),
          SizedBox(
            height: 25,
          ),
          exercise3(),
          SizedBox(
            height: 25,
          ),
          exercise4(),
          SizedBox(
            height: 25,
          ),
          exercise5(),
          SizedBox(
            height: 25,
          ),
          exercise6(),
          /*******************--[focus here 🧐]--*******************/
        ],
      ),
    );
  }

  /// TODO: Implement Exercises below as per the handed Document
  Widget exercise1() {
    return Container(
      child: Text(
        "Welcome to lab1",
        style: TextStyle(
          color: Colors.greenAccent,
          backgroundColor: Colors.grey,
          fontStyle: FontStyle.italic,
          fontWeight: FontWeight.w700,
          fontSize: 40,
          fontFamily: "monospace",
          letterSpacing: 8.0,
        ),
      ),
    );
  }

  Widget exercise2() {
    return Icon(
      Icons.favorite,
      color: Colors.green,
    );
  }

  /// TODO : print on the screen on Pressed when clicking on the button, and print on Long Pressed when long click to Button
  Widget exercise3() {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
          ),
          backgroundColor: Colors.blue),
      child: const Text(
        "Click here",
        style: TextStyle(color: Colors.amber, fontSize: 25),
      ),
      onPressed: () {
        print("on pressed");
      },
      onLongPress: () {
        print("long pressed");
      },
    );
  }

  Widget exercise4() {
    return Container(
      decoration: BoxDecoration(
        color: Colors.black,
        shape: BoxShape.circle,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 5,
            blurRadius: 7,
            offset: Offset(0, 3),
          ),
        ],
      ),
      child: IconButton(
        onPressed: () {},
        icon: Icon(
          Icons.favorite,
          color: Colors.greenAccent,
        ),
        iconSize: 15.0,
      ),
    );
  }

  Widget exercise5() {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.transparent,
        minimumSize: Size (250, 50),
        side: BorderSide (color: Colors.yellow, width: 2),
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.zero
        ),

    elevation: 0,
      ),
      child: const Text(
        "Button to press", style: TextStyle(
        color: Colors.orange,
        fontSize: 20,
      ),
      ),
         onPressed: () {},);
  }

  Widget exercise6() {
    return Center(

      child: Container(
        width: 200,
          height: 200,
        decoration: BoxDecoration(
          color: Colors.yellow,
        border: Border(
            top: BorderSide (color: Colors.lightBlueAccent, width: 10),
            right: BorderSide (color: Colors.purple, width: 10),
            bottom: BorderSide (color: Colors.red, width: 10),
    left: BorderSide(color: Colors.blueAccent, width: 10),
        ),
      ),
    child: Icon(
    Icons.warning,
    size: 30,
    ),
      ),
    );
  }
}
