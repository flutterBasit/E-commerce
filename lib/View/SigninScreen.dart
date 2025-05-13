import 'package:e_commerce/Resources/Components/Buttons.dart';
import 'package:e_commerce/Resources/Components/TextFormFields.dart';
import 'package:e_commerce/Resources/Constants/Constants.dart';
import 'package:email_validator/email_validator.dart';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Signinscreen extends StatefulWidget {
  const Signinscreen({super.key});

  @override
  State<Signinscreen> createState() => _SigninscreenState();
}

class _SigninscreenState extends State<Signinscreen> {
  final _Emailcontroller = TextEditingController();
  final _Passwordcontroller = TextEditingController();
  final _formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: _formkey,
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(17.0),
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 10.h,
                ),
                customAppBar(),
                SizedBox(
                  height: 20.h,
                ),
                AuthTextField(
                  labelText: 'Username or Email',
                  controller: _Emailcontroller,
                  hintText: 'Email@example.com',
                  keyboardType: TextInputType.emailAddress,
                  prefixIcons: Icons.person,
                  validator: (value) => EmailValidator.validate(value ?? '')
                      ? null
                      : 'Enter Valid Email',
                ),
                SizedBox(
                  height: 25.h,
                ),
                AuthTextField(
                    labelText: 'Password',
                    controller: _Passwordcontroller,
                    hintText: '********',
                    keyboardType: TextInputType.visiblePassword,
                    prefixIcons: Icons.lock,
                    isPassword: true,
                    validator: (value) =>
                        value!.length >= 8 ? null : 'Minimum 8 characters'),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        'Forgot Password?',
                        style: Constants.signinForgotPass,
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 35.h,
                ),
                Buttons(
                    title: 'Login',
                    color: Constants.redColor,
                    onTap: () {
                      if (_formkey.currentState!.validate()) {
                        print('Success');
                      }
                    }),
                SizedBox(
                  height: 60.h,
                ),
                Center(
                  child: Column(
                    //
                    children: [
                      Text(
                        '-Or Continue with-',
                        style: Constants.signinOrContinue,
                      ),
                      SizedBox(
                        height: 15.h,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Image.asset(
                            'assets/images/Google.png',
                            height: 54.h,
                            width: 54.w,
                          ),
                          SizedBox(
                            width: 6.h,
                          ),
                          Image.asset(
                            'assets/images/Facebook.png',
                            height: 54.h,
                            width: 54.w,
                          ),
                          SizedBox(
                            width: 6.h,
                          ),
                          Image.asset(
                            'assets/images/Facebook1.png',
                            height: 54.h,
                            width: 54.w,
                          )
                        ],
                      ),
                      SizedBox(
                        height: 20.h,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Create An Account",
                            style: Constants.signinCreateAnAccount,
                          ),
                          SizedBox(
                            width: 6.h,
                          ),
                          GestureDetector(
                            onTap: () {},
                            child: Text(
                              "Sign Up",
                              style: Constants.signinCreateAnAccount2,
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
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
