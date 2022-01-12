import 'package:flutter/material.dart';

class Background extends StatelessWidget {
  final Widget child;
  const Background({
    Key? key,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      width: double.infinity,
      height: size.height,
      alignment: Alignment.center,
      padding: const EdgeInsets.all(40),
      decoration: const BoxDecoration(
        color: Colors.black54,
      ),
      child: child,
    );
  }
}
