import 'package:flutter/material.dart';

class ResultScreen extends StatelessWidget {
  final double result;
  final bool isMale;
  final int age;

  ResultScreen({required this.result, required this.isMale, required this.age});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(0, 0, 30, 1),
      appBar: AppBar(
        title: Text(
          'BMI Result',
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        backgroundColor: Color.fromRGBO(0, 0, 30, 1),
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.keyboard_arrow_left),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Gender : ${isMale ? 'Male' : 'Female'}',
              style: TextStyle(
                fontWeight: FontWeight.w900,
                fontSize: 35,
                color: Colors.grey[500],
              ),
            ),
            SizedBox(height: 5),
            Text(
              'Result : ${result.round()}',
              style: TextStyle(
                fontWeight: FontWeight.w900,
                fontSize: 35,
                color: Colors.grey[500],
              ),
            ),
            SizedBox(height: 5),
            Text(
              'Age : $age',
              style: TextStyle(
                fontWeight: FontWeight.w900,
                fontSize: 35,
                color: Colors.grey[500],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
