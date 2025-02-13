import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  double balance = 0;
  void addMoney() {
   
    
    setState(() {
       balance = balance + 500;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text('Billionaire App'),
          backgroundColor: CupertinoColors.darkBackgroundGray,
        ),
        body: Container(
          padding: EdgeInsets.all(20),
          color: Colors.blueGrey[700],
          width: double.infinity,
          height: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                flex: 9,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Bank Balance :'),
                    SizedBox(
                      height: 20,
                    ),
                    Text('$balance')
                  ],
                ),
              ),
              Expanded(
                flex: 1,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.red[700],
                        minimumSize: Size(double.infinity, 0)),
                    onPressed: addMoney,
                    child: Text('Add Money')),
              )
            ],
          ),
        ),
      ),
    );
  }
}
