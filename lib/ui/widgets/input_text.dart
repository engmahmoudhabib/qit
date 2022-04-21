import 'package:flutter/material.dart';

class InputText extends StatefulWidget {
  final String hint;
  final Widget? icon;
  const InputText({
    Key? key,
    required this.hint,
    required this.icon,
  }) : super(key: key);

  @override
  State<InputText> createState() => _InputTextState();
}

class _InputTextState extends State<InputText> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      width: 300,
      child: TextField(
        decoration: InputDecoration(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(50.0),
            ),
            filled: true,
            contentPadding: EdgeInsets.only(left: 20),
            suffixIcon: widget.icon,
            hintStyle: TextStyle(color: Colors.grey[800]),
            hintText: widget.hint,
            fillColor: Colors.white70),
      ),
    );
  }
}
