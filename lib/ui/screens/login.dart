import 'package:flutter/material.dart';
import 'package:qit/blocs/login_bloc.dart';

import 'package:qit/core/constants.dart';
import 'package:qit/ui/widgets/login/input_text.dart';
import 'package:qit/ui/widgets/login/login_button.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
 late LoginBloc _bloc;

  @override
  void initState() {
    _bloc = LoginBloc();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        // ignore: sized_box_for_whitespace
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.1,
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: MediaQuery.of(context).size.width * 0.115,
                  bottom: 10,
                ),
                child: const Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Login',
                    style: TextStyle(
                      fontSize: 73,
                      color: Color(
                        0xff1D2226,
                      ),
                      fontFamily: 'Roboto',
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: MediaQuery.of(context).size.width * 0.12,
                  bottom: MediaQuery.of(context).size.height * 0.05,
                ),
                child: const Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Please login to your account.',
                    style: TextStyle(
                      fontSize: 18,
                      color: Color(
                        0xff1D2226,
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  bottom: MediaQuery.of(context).size.height * 0.02,
                ),
                child: InputText(
                  hint: 'Email Address',
                  obscureText: false,
                  bloc: _bloc,
                  textInputAction: TextInputAction.next,
                  textInputType: TextInputType.emailAddress,
                  icon: Image.asset(
                    AppConstants.messageFromAssets,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  bottom: MediaQuery.of(context).size.height * 0.04,
                ),
                child: InputText(
                    hint: 'Password',
                    bloc: _bloc,
                    textInputAction: TextInputAction.done,
                    textInputType: TextInputType.text,
                    obscureText: true,
                    icon: Padding(
                      padding: const EdgeInsets.only(
                        right: 10,
                      ),
                      child: Image.asset(
                        AppConstants.lockFromAssets,
                      ),
                    )),
              ),
              const LoginButton(),
              const SizedBox(
                height: 15,
              ),
              Padding(
                padding: EdgeInsets.only(
                  right: MediaQuery.of(context).size.width * 0.13,
                  bottom: MediaQuery.of(context).size.height * 0.1,
                ),
                child: const Align(
                  alignment: Alignment.centerRight,
                  child: Text(
                    'Forgot Password?',
                    style: TextStyle(
                      fontSize: 14,
                      color: Color(
                        0xff1A1A1A,
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  bottom: MediaQuery.of(context).size.height * 0.04,
                ),
                child: const Text(
                  'or login with',
                  style: TextStyle(
                    fontSize: 12,
                    color: Color(
                      0xff9D9D9D,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  bottom: MediaQuery.of(context).size.height * 0.1,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Image.asset(
                      AppConstants.gmailFromAssets,
                    ),
                    Image.asset(
                      AppConstants.facebookFromAssets,
                    ),
                    Image.asset(
                      AppConstants.twitterFromAssets,
                    ),
                  ],
                ),
              ),
              // Don’t have an account? Create new now!
              const Text.rich(
                TextSpan(
                  text: "Don’t have an account?",
                  style: TextStyle(
                    fontSize: 12,
                    color: Color(
                      0xff1A1A1A,
                    ),
                  ),
                  children: <TextSpan>[
                    TextSpan(
                      text: ' Create new now!',
                      style: TextStyle(
                        decoration: TextDecoration.underline,
                      ),
                    ),
                    // can add more TextSpans here...
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
