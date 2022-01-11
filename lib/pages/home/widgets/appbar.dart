import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

AppBar appbarWidget() {
  return AppBar(
    elevation: 0,
    title: GestureDetector(
      onTap: () async {},
      child: Row(
        children: const [
          Text('송파동'),
          Icon(Icons.arrow_drop_down),
        ],
      ),
    ),
    actions: [
      IconButton(onPressed: () {}, icon: const Icon(Icons.search)),
      IconButton(onPressed: () {}, icon: const Icon(Icons.tune)),
      IconButton(
        onPressed: () {},
        icon: SvgPicture.asset("assets/svg/bell.svg", width: 22),
      ),
    ],
  );
}
