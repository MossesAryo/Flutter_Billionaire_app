import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AddMoney extends StatelessWidget {

  void Function () addMoneyfunction;

  AddMoney({super.key, required this.addMoneyfunction});



  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(
              backgroundColor: Colors.red[700],
              minimumSize: Size(double.infinity, 0)),
          onPressed: addMoneyfunction,
          child: Text('Add Money')),
    );
  }
}
