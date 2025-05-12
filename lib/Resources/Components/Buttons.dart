import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Buttons extends StatelessWidget {
  final Color? color;
  final String title;

  const Buttons({super.key, this.color, required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 55.h,
      width: 317.w,
      decoration:
          BoxDecoration(color: color, borderRadius: BorderRadius.circular(20)),
      child: Center(
        child: Text(title),
      ),
    );
  }
}
