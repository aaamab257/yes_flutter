import 'package:flutter/material.dart';
import 'package:yes_flutter/view/login/login_screen.dart';

import '../../login/widget/custom_button.dart';
import '../../login/widget/custom_text_form.dart';

class RegisterBody extends StatefulWidget {
  @override
  State<RegisterBody> createState() => _RegisterBodyState();
}

class _RegisterBodyState extends State<RegisterBody> {
  late TextEditingController _emailController,
      _passController,
      _phoneController,
      _confirmPassController,
      _academyController,
      _sectionController,
      _nameController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _emailController = TextEditingController();
    _passController = TextEditingController();
    _phoneController = TextEditingController();
    _confirmPassController = TextEditingController();
    _academyController = TextEditingController();
    _sectionController = TextEditingController();
    _nameController = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Container(
          width: MediaQuery.of(context).size.width,
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
                height: 10,
              ),
              CustomTextField(
                hint: 'تأكيد كلمة المرور',
                controller: _confirmPassController,
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
                height: 10,
              ),
              CustomTextField(
                hint: 'الاسم',
                controller: _nameController,
                inputType: TextInputType.text,
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
                hint: 'رقم الهاتف',
                controller: _phoneController,
                inputType: TextInputType.phone,
                onPressed: () {},
                isPassword: false,
                isShowSuffixIcon: false,
                icon: Icon(
                  Icons.phone,
                  color: Colors.red,
                ),
                enabled: true,
              ),
              SizedBox(
                height: 10,
              ),
              CustomTextField(
                hint: 'الاكاديمية',
                controller: _academyController,
                inputType: TextInputType.text,
                onPressed: () {},
                isPassword: false,
                isShowSuffixIcon: false,
                icon: Icon(
                  Icons.home_filled,
                  color: Colors.red,
                ),
                enabled: true,
              ),
              SizedBox(
                height: 10,
              ),
              CustomTextField(
                hint: 'الشعبة',
                controller: _sectionController,
                inputType: TextInputType.text,
                onPressed: () {},
                isPassword: false,
                isShowSuffixIcon: false,
                icon: Icon(
                  Icons.home,
                  color: Colors.red,
                ),
                enabled: true,
              ),
              SizedBox(
                height: 20,
              ),
              CustomButton(
                buttonText: 'تسجيل',
                onPressed: () {},
                margin: 30,
              ),
              SizedBox(
                height: 10,
              ),
              InkWell(
                child: Text(
                  'تسجيل الدخول',
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.red, fontSize: 18),
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => LoginScreen()),
                  );
                },
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'لتفعيل الحساب يرجى التواصل على رقم ٠١٠٦١٠١٧٧٧٠',
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.red, fontSize: 18),
              ),
              SizedBox(
                height: 10,
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
