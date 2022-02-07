import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends GetWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: context.height,
      width: context.width,
      child: Center(
        child: Text('HomePage'),
      ),
    );
  }
}
