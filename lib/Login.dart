import 'package:flutter/material.dart';
import 'package:flutterDemo/Validation.dart';
import 'SnackBar.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  var emailController = TextEditingController();
  var passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Builder(
        builder: (context) => Container(
          margin: EdgeInsets.only(left: 10, right: 10),
          child: Center(
            child: Column(
              children: [
                SizedBox(
                  height: 40,
                ),
                customTextField(
                    emailController, 'Email', false, Icon(Icons.email)),
                customTextField(
                    passwordController, 'Password', true, Icon(Icons.vpn_key)),
                SizedBox(
                  height: 20,
                ),
                ButtonTheme(
                  textTheme: ButtonTextTheme.primary,
                  buttonColor: Colors.red,
                  minWidth: 200,
                  child: RaisedButton(
                      child: Text('Login'),
                      onPressed: () {
                        if (validateField(context)) {
                          // API Call
                          print('API call');
                        }
                      }),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  bool validateField(BuildContext context) {
    if (!Validation.shared.isEmailValidation(emailController.text)) {
      CustomSnackBar(
          context, 'Please enter valid email', SnackBartype.nagetive);
      return false;
    } else if (passwordController.text.length <= 0) {
      CustomSnackBar(
          context, 'Please enter valid password', SnackBartype.nagetive);
      return false;
    } else {
      return true;
    }
  }
}

Widget customTextField(TextEditingController controller, String hintTextt,
    bool isSecure, Icon icon) {
  return TextField(
    obscureText: isSecure ? true : false,
    controller: controller,
    decoration: InputDecoration(hintText: hintTextt, prefixIcon: icon),
  );
}
