import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../activation_body.dart';

class ActivationScreen extends StatefulWidget {
  @override
  State<ActivationScreen> createState() => _ActivationScreenState();
}

class _ActivationScreenState extends State<ActivationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ActivationBody(),
    );
  }
}
