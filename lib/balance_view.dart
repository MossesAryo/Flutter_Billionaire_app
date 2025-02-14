import 'package:flutter/cupertino.dart';

class BalanceView extends StatelessWidget {
  double balance;

   BalanceView({super.key,required this.balance});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 9,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Bank Balance : '),
          SizedBox(
            height: 20,
          ),
          Text('$balance'),
        ],
      ),
    );
  }
}
