import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:yes_flutter/view/login/widget/custom_button.dart';
import 'package:yes_flutter/view/register/register_screen.dart';

import 'custom_text_form.dart';

class LoginBody extends StatefulWidget {
  @override
  State<LoginBody> createState() => _LoginBodyState();
}

class _LoginBodyState extends State<LoginBody> {
  late TextEditingController _emailController, _passController;
  late FocusNode _passFocus, _emailFocus;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _emailController = TextEditingController();
    _passController = TextEditingController();
    _passFocus = FocusNode();
    _emailFocus = FocusNode();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _emailController.dispose();
    _passController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Column(
            children: [
              Image.asset('assets/yes_logo.png'),
              SizedBox(
                height: 30,
              ),
              CustomTextField(
                hint: 'البريد الالكتروني',
                controller: _emailController,
                inputType: TextInputType.emailAddress,
                onPressed: () {},
                isPassword: false,
                isShowSuffixIcon: false,
                icon: Icon(
                  Icons.person,
                  color: Colors.red,
                ),
                enabled: true,
              ),
              SizedBox(
                height: 10,
              ),
              CustomTextField(
                hint: 'كلمة المرور',
                controller: _passController,
                inputType: TextInputType.text,
                onPressed: () {},
                isPassword: true,
                isShowSuffixIcon: true,
                icon: Icon(
                  Icons.password,
                  color: Colors.red,
                ),
                enabled: true,
              ),
              SizedBox(
                height: 20,
              ),
              CustomButton(
                buttonText: 'تسجيل الدخول',
                onPressed: () {},
                margin: 30,
              ),
              SizedBox(
                height: 10,
              ),
              InkWell(
                child: Text(
                  'حساب جديد',
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.red, fontSize: 18),
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => RegisterScreen()),
                  );
                },
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'للتواصل عن طريق الواتساب على رقم ٠١٠٦١٠١٧٧٧٠',
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.red, fontSize: 18),
              ),
              SizedBox(
                height: 20,
              ),
              Image.asset(
                'assets/books.png',
                width: 150,
                height: 150,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
