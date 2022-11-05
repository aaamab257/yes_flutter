import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';

class ActivationBody extends StatelessWidget {
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
              Text(
                'يرجي تفعيل الحساب , للتواصل عن طريق الواتساب على رقم ٠١٠٦١٠١٧٧٧٠',
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
