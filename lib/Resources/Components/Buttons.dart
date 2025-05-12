import 'package:e_commerce/Resources/Constants/Constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class Buttons extends StatelessWidget {
  final Color? color;
  final String title;
  final OnTap? onTap;

  const Buttons({super.key, this.color, required this.title, this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTap;
      },
      child: Container(
        height: 55.h,
        width: 317.w,
        decoration: BoxDecoration(
            color: color, borderRadius: BorderRadius.circular(20)),
        child: Center(
          child: Text(
            title,
            style: Constants.signinbuttonAll,
          ),
        ),
      ),
    );
  }
}
