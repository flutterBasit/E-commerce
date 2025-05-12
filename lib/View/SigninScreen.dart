import 'package:e_commerce/Resources/Components/TextFormFields.dart';
import 'package:e_commerce/Resources/Constants/Constants.dart';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Signinscreen extends StatefulWidget {
  const Signinscreen({super.key});

  @override
  State<Signinscreen> createState() => _SigninscreenState();
}

class _SigninscreenState extends State<Signinscreen> {
  final TextEditingController _Emailcontroller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 10.h,
            ),
            customAppBar(),
            AuthTextField(
              labelText: 'Username or Email',
              controller: _Emailcontroller,
              hintText: 'Email@example.com',
            )
          ],
        ),
      ),
    );
  }
}

Widget customAppBar() {
  return Text(
    'WELCOME \nBACK!',
    style: Constants.signinAppBar,
  );
}
