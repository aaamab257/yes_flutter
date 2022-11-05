import 'package:flutter/material.dart';

class CustomTextField extends StatefulWidget {
  String hint;
  Icon icon;
  TextEditingController controller;
  TextInputType inputType;
  Function onPressed;

  final bool isPassword;
  final bool isShowSuffixIcon;
  bool enabled;

  CustomTextField(
      {this.hint = 'Write something...',
      required this.controller,
      this.inputType = TextInputType.text,
      required this.icon,
      required this.onPressed,
      required this.isPassword,
      this.isShowSuffixIcon = false,
      required this.enabled});

  @override
  _CustomTextFieldState createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  bool _obscureText = true;

  @override
  Widget build(BuildContext context) {
    return Container(
        alignment: Alignment.center,
        margin: const EdgeInsets.symmetric(horizontal: 20),
        child: TextFormField(
          textAlign: TextAlign.end,
          enabled: widget.enabled,
          controller: widget.controller,
          autovalidateMode: AutovalidateMode.onUserInteraction,
          textAlignVertical: TextAlignVertical.center,
          onTap: () => widget.onPressed,
          obscureText: widget.isPassword ? _obscureText : false,
          decoration: InputDecoration(
            suffixIcon: widget.isPassword
                ? IconButton(
                    icon: Icon(
                      _obscureText ? Icons.visibility_off : Icons.visibility,
                      color: Colors.red,
                    ),
                    onPressed: _toggle)
                : widget.isShowSuffixIcon
                    ? Icon(
                        Icons.arrow_drop_down_sharp,
                        color: Colors.red,
                      )
                    : null,
            filled: true,
            enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(),
            ),
            focusedBorder: UnderlineInputBorder(
              borderSide: BorderSide(),
            ),
            border: UnderlineInputBorder(
              borderSide: BorderSide(),
            ),
            prefixIcon: Padding(
              padding: EdgeInsets.only(left: 15, right: 15),
              child: widget.icon,
            ),
            hintText: widget.hint,
          ),
          /*cursorColor: secondaryColor,*/
          keyboardType: widget.inputType,
          textInputAction: TextInputAction.done,
        ));
  }

  void _toggle() {
    setState(() {
      _obscureText = !_obscureText;
    });
  }
}
