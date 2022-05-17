import 'package:flutter/material.dart';
import 'package:restaurant_management/components/primary_button.dart';
import 'package:restaurant_management/Util/constants.dart';


class SigninScreen extends StatefulWidget {
  const SigninScreen({Key? key}) : super(key: key);

  @override
  _SigninScreenState createState() => _SigninScreenState();
}

class _SigninScreenState extends State<SigninScreen> {
  bool _passStatetus = true;
  final TextEditingController _usernameController = new TextEditingController();
  final TextEditingController _passwordController = new TextEditingController();
  final _emailErr = "Email không đúng";
  final _passErr = "Password không đúng";
  var _isEmailValid = true;
  var _isPassValid = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.symmetric(
            horizontal: kDefaultPadding,
          ),
          child: Column(
            children: <Widget>[
              Container(
                height: 100,
              ),
              Image.asset(
                "assets/images/Logo_light.png",
                height: 146,
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 0, 0, 20),
                child: TextField(
                    controller: _usernameController,
                    decoration: InputDecoration(
                        labelText: "Email",
                        errorText: _isEmailValid ? null : _emailErr,
                        labelStyle: const TextStyle(
                            fontSize: 15, fontWeight: FontWeight.bold))),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 0, 0, 40),
                child: Stack(
                    alignment: AlignmentDirectional.centerEnd,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0, 0, 0, 20),
                        child: TextField(
                            controller: _passwordController,
                            obscureText: _passStatetus,
                            decoration: InputDecoration(
                                errorText: _isPassValid ? null : _passErr,
                                labelText: "Password",
                                labelStyle: const TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold))),
                      ),
                      TextButton(
                          onPressed: _showOrHidePass,
                          child: Text(
                            _passStatetus ? "Show" : "Hide",
                            style: const TextStyle(
                                color: Colors.blue,
                                fontWeight: FontWeight.bold),
                          ))
                    ]),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 0, 0, 30),
                child: SizedBox(
                  width: double.infinity,
                  height: 56,
                  child: PrimaryButton(
                    key: null,
                    color: Colors.blue,
                    text: "Sign in",
                    press: (){},
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _showOrHidePass() {
    setState(() {});
    _passStatetus = !_passStatetus;
  }
}
