import 'dart:html';

import 'package:flutter/material.dart';

class Colum extends StatelessWidget {
  const Colum({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title : const Text('Colum'),

      ),
      body : Container (
      color: Colors.yellow,
      child:  Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
       ElevatedButton(onPressed: () {}, child: const Text('Button 1')),
            ElevatedButton(onPressed: () {}, child: const Text('Button 1')),
            ElevatedButton(onPressed: () {}, child: const Text('Button 1')),
      ],
    ),
  ),

    

    );
    


  }
}