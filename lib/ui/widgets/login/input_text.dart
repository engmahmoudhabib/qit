import 'package:flutter/material.dart';
import 'package:qit/blocs/login_bloc.dart';

class InputText extends StatefulWidget {
  final String hint;
  final Widget? icon;
  final bool obscureText;
  final TextInputType? textInputType;
  final TextInputAction? textInputAction;
  final LoginBloc bloc;
  const InputText({
    Key? key,
    required this.hint,
    required this.icon,
    required this.obscureText,
    required this.textInputType,
    required this.textInputAction,
    required this.bloc,
  }) : super(key: key);

  @override
  State<InputText> createState() => _InputTextState();
}

class _InputTextState extends State<InputText> {
  bool _hasError = false;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      width: 300,
      child: StreamBuilder<Object>(
          stream: widget.obscureText == true
              ? widget.bloc.password$
              : widget.bloc.email$,
          builder: (context, snapshot) {
            return TextFormField(
              obscureText: widget.obscureText,
              keyboardType: widget.textInputType,
              textInputAction: widget.textInputAction,
              onChanged: (value) {
                if (widget.obscureText == true) {
                  widget.bloc.setPassword(value);
                  if (snapshot.hasError == true) {
                    setState(() {
                      _hasError = true;
                    });
                  } else {
                    setState(() {
                      _hasError = false;
                    });
                  }
                } else {
                  widget.bloc.setEmail(value);
                  if (snapshot.hasError == true) {
                    setState(() {
                      _hasError = true;
                    });
                  } else {
                    setState(() {
                      _hasError = false;
                    });
                  }
                }
              },
              decoration: InputDecoration(
                errorBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(50.0),
                  borderSide: BorderSide(
                    color: _hasError == true ? Colors.red : Colors.black,
                  ),
                ),

                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(50.0),
                  borderSide: BorderSide(
                    color: _hasError == true ? Colors.red : Colors.blue,
                  ),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(50.0),
                  borderSide: BorderSide(
                    color: _hasError == true ? Colors.red : Colors.black,
                  ),
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(50.0),
                  borderSide: BorderSide(
                    color: _hasError == true ? Colors.red : Colors.black,
                  ),
                ),
                filled: true,
                contentPadding: const EdgeInsets.only(left: 20),
                suffixIcon: widget.icon,
                hintStyle: TextStyle(color: Colors.grey[800]),
                hintText: snapshot.error != null
                    ? snapshot.error.toString()
                    : widget.hint,
                fillColor: Colors.white70,

                // errorText: snapshot.error != null ? snapshot.error.toString() : '',
              ),
            );
          }),
    );
  }
}
