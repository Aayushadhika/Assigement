import 'package:flutter/material.dart';
import 'package:test_app/screens/arithmetic_screen.dart';
import 'package:test_app/screens/circle_screen.dart';
import 'package:test_app/screens/simple_intrest_screen.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dashbord'),
        centerTitle: true,
      ),
      body: Column(children: [
        SizedBox(
          width: double.infinity,
          child: ElevatedButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const SimpleInterestScreen()));
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.green,
            ),
            child: const Text(
              'Arithmetic screen',
              style: TextStyle(fontSize: 30),
            ),
          ),
        ),
        SizedBox(
            width: double.infinity,
            child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const ArithmeticScreen()));
                },
                child: const Text('Simple Intrest',
                    style: TextStyle(fontSize: 30)))),
        SizedBox(
            width: double.infinity,
            child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const CircleScreen()));
                },
                child: const Text('area of circle ',
                    style: TextStyle(fontSize: 30)))),
      ]),
    );
  }
}
