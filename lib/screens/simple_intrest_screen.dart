import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SimpleInterestScreen extends StatefulWidget {
  const SimpleInterestScreen({super.key});

  @override
  State<SimpleInterestScreen> createState() => _SimpleInterestScreenState();
}

class _SimpleInterestScreenState extends State<SimpleInterestScreen> {
  double result = 0;
  double? principle;
  double? rate;
  double? time;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green[100],
      appBar: AppBar(
        title: const Text("Arithmetic"),
        backgroundColor: Colors.blue[200],
        centerTitle: true,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              TextField(
                  onChanged: (value) {
                    principle = double.parse(value);
                  },
                  keyboardType: TextInputType.number,
                  decoration: const InputDecoration(
                      labelText: 'Enter principle',
                      border: OutlineInputBorder())),
              const SizedBox(
                height: 10,
              ),
              TextField(
                onChanged: (value) {
                  rate = double.parse(value);
                },
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                    labelText: 'Enter rate', border: OutlineInputBorder()),
                    
              ),
              const SizedBox(
                height: 10,
              ),
              TextField(
                onChanged: (value) {
                  time = double.parse(value);
                },
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                    labelText: 'Enter time', border: OutlineInputBorder()),
              ),
              const SizedBox(height: 20),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    setState(() {
                      result = (principle! * rate! * time!) / 100;
                    });
                  },
                  child: const Text(
                    'Calculate',
                    style: TextStyle(fontSize: 30),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              const SizedBox(height: 20),
              Text(
                'Result: $result',
                style: const TextStyle(fontSize: 20),
              ),
              RichText(
                  text: const TextSpan(
                      text: 'Hello',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 30,
                      ),
                      children: <TextSpan>[
                    TextSpan(
                        text: 'blod',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.amber,
                          backgroundColor: Colors.black
                        )),
                         TextSpan(
                        text: 'world',
                      
                        
                        ),
                  ])),
                  
              RichText(
                  text: const TextSpan(
                      text: 'M',
                      style: TextStyle(
                        color: Colors.red,
                        fontSize: 55,
                      ),
                      children: <TextSpan>[
                    TextSpan(
                        text: 'y ',
                        style: TextStyle(
                          fontSize: 33,
                          color: Colors.black,
                        )),
                         TextSpan(
                        text: 'name is ',
                       style: TextStyle(
                          fontSize: 33,
                          color: Colors.black,
                        )),
                        TextSpan(
                        text: 'Aayush ',
                       style: TextStyle(
                          fontSize: 55,
                          color: Colors.black,
                        )),
                        
                      
                  ]))
            ],
          ),
        ),
      ),
    );
  }
}
