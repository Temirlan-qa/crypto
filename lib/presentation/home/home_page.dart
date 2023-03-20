import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            Row(
                // BTC/USDT
                ),
            SizedBox(
              height: 15,
            ),
            Expanded(
              flex: 2,
              child: Column(

              ),
            ),

            Expanded(
              flex: 1,
              child: Column(

              ),
            ),
          ],
        ),
      ),
    );
  }
}
