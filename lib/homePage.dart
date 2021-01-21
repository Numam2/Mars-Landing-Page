import 'package:flutter/material.dart';
import 'package:marslandingpage/desktop/homeDesk.dart';
import 'package:marslandingpage/mobile/homeMobile.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth > 750) {
          return HomeDesk();
        } else {
          return HomeMobile();
        }
      },
    );
  }
}