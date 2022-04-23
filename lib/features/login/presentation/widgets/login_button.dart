import 'package:cool_alert/cool_alert.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:qit/core/providers.dart';
import 'package:qit/features/login/domain/entities/login_request_model.dart';
import 'package:qit/features/login/data/datasource/login_remote_data_source.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../blocs/login_bloc.dart';

class LoginButton extends StatefulWidget {
  String? email;
  String? password;
  LoginButton({
    Key? key,
    required this.email,
    required this.password,
  }) : super(key: key);

  @override
  State<LoginButton> createState() => _LoginButtonState();
}

class _LoginButtonState extends State<LoginButton> {
  bool isLoading = false;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      width: 300,
      child: BlocListener<LoginBloc, LoginState>(
        listener: (context, state) async {
          final prefs = await SharedPreferences.getInstance();
          if (state is Loaded && state.response.data != null) {
            setState(() {
              isLoading = false;
            });
            Navigator.pushNamed(context, 'home');
          } else if (state is Loading) {
            setState(() {
              isLoading = true;
            });
          } else if (state is Error) {
            setState(() {
              isLoading = false;
            });
           
            CoolAlert.show(
              context: context,
              type: CoolAlertType.error,
              text: prefs.getString('token'),
            );
          } else if (state is Loaded && state.response.data == null) {
            setState(() {
              isLoading = false;
            });
            CoolAlert.show(
              context: context,
              type: CoolAlertType.error,
              text: prefs.getString('token'),
            );
          }
        },
        child: isLoading == false
            ? Consumer(
                builder: (BuildContext context, WidgetRef ref, Widget? child) {
                  bool error = ref.watch(hasError.state).state;
                  return AbsorbPointer(
                    absorbing: error,
                    child: ElevatedButton(
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(
                            error == true ? Colors.grey : Colors.black),
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(
                              50.0,
                            ),
                          ),
                        ),
                      ),
                      onPressed: () {
                        LoginRequest request = LoginRequest(
                          email: widget.email,
                          password: widget.password,
                        );
                        BlocProvider.of<LoginBloc>(context).add(
                          GetLoginResponseEvent(
                            request,
                          ),
                        );
                      },
                      child: Text(
                        "LOGIN".toUpperCase(),
                      ),
                    ),
                  );
                },
              )
            : const Center(
                child: CircularProgressIndicator(),
              ),
      ),
    );
  }
}
