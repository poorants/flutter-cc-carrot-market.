import 'package:carrot_market_cc/pages/login/widgets/background.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
        child: SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            'LOADING',
            style: TextStyle(
              color: Colors.black87,
              fontWeight: FontWeight.bold,
              fontSize: 35,
            ),
          ),
          const SizedBox(
            height: 40,
          ),
          SizedBox(
              height: size.height * 0.3,
              width: size.height * 0.3,
              child: DecoratedBox(
                decoration: BoxDecoration(
                  color: Colors.black54,
                  borderRadius: BorderRadius.circular(size.height * 0.3),
                ),
              )),
          const SizedBox(
            height: 40,
          ),
        ],
      ),
    ));
  }
}
