import 'package:cybercyld/models/login_request_model.dart';
import 'package:cybercyld/screens/services/api_service.dart';
import 'package:flutter/material.dart';
import 'package:cybercyld/components/custom_surfix_icon.dart';
import 'package:cybercyld/helper/keyboard.dart';
import 'package:cybercyld/screens/forgot_password/forgot_password_screen.dart';
import 'package:cybercyld/screens/login_success/login_success_screen.dart';

import '../../../components/default_button.dart';
import '../../../constants.dart';
import '../../../size_config.dart';
//import '../../services/auth.dart';
//import '../../home/home_screen.dart';

class SignForm extends StatefulWidget {
  const SignForm({Key? key}) : super(key: key);

  @override
  _SignFormState createState() => _SignFormState();
}

class _SignFormState extends State<SignForm> {
  final _formKey = GlobalKey<FormState>();
  String? email;
  String? password;
  bool? remember = false;
  bool isApiCalling = false;
  final List<String?> errors = [];

  void addError({String? error}) {
    if (!errors.contains(error)) {
      setState(() {
        errors.add(error);
      });
    }
  }

  void removeError({String? error}) {
    if (errors.contains(error)) {
      setState(() {
        errors.remove(error);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          buildEmailFormField(),
          SizedBox(height: getProportionateScreenHeight(30)),
          buildPasswordFormField(),
          SizedBox(height: getProportionateScreenHeight(30)),
          Row(
            children: [
              Checkbox(
                value: remember,
                activeColor: kPrimaryColor,
                onChanged: (value) {
                  setState(() {
                    remember = value;
                  });
                },
              ),
              const Text("Remember me"),
              const Spacer(),
              GestureDetector(
                onTap: () => Navigator.pushNamed(
                    context, ForgotPasswordScreen.routeName),
                child: const Text(
                  "Forgot Password",
                  style: TextStyle(decoration: TextDecoration.underline),
                ),
              )
            ],
          ),
          SizedBox(height: getProportionateScreenHeight(20)),
          DefaultButton(
            text: isApiCalling ? "Processing" : "Continue",
            press: isApiCalling
                ? null
                : () async {
                    if (_formKey.currentState!.validate()) {
                      _formKey.currentState!.save();
                      // if all are valid then go to success screen
                      setState(() {
                        isApiCalling = true;
                      });
                      KeyboardUtil.hideKeyboard(context);

                      final res = await APIService.login(LoginRequestModel(
                        username: email,
                        password: password,
                      ));
                      setState(() {
                        isApiCalling = false;
                      });
                      if (res['success']) {
                        Navigator.pushNamed(
                            context, LoginSuccessScreen.routeName);
                      } else {
                        await showDialog(
                            context: context,
                            builder: (_) {
                              return AlertDialog(
                                title: const Text('Login failed'),
                                content: Text(res['message'] ?? ''),
                              );
                            });
                      }
                      // signInWithGoogle();
                      // signInWithGoogle();
                      // signInWithGoogle();
                      // signInWithGoogle();
                      // signInWithGoogle();
                    }
                  },
          ),
        ],
      ),
    );
  }

  TextFormField buildPasswordFormField() {
    return TextFormField(
      obscureText: true,
      onSaved: (newValue) => password = newValue,
      onChanged: (value) {
        password = password;
      },
      validator: (value) {
        if (value == null) {
          return kPassNullError;
        } else if (value.isEmpty) {
          return kPassNullError;
        }
        return null;
      },
      decoration: const InputDecoration(
        labelText: "Password",
        hintText: "Enter your password",
        // If  you are using latest version of flutter then lable text and hint text shown like this
        // if you r using flutter less then 1.20.* then maybe this is not working properly
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: CustomSurffixIcon(svgIcon: "assets/icons/Lock.svg"),
      ),
    );
  }

  TextFormField buildEmailFormField() {
    return TextFormField(
      keyboardType: TextInputType.emailAddress,
      onSaved: (newValue) => email = newValue,
      onChanged: (value) {
        email = value;
      },
      validator: (value) {
        if (value == null) {
          return kEmailNullError;
        } else if (value.isEmpty) {
          return kEmailNullError;
        }
        return null;
      },
      decoration: const InputDecoration(
        labelText: "Username",
        hintText: "Enter your username",
        // If  you are using latest version of flutter then lable text and hint text shown like this
        // if you r using flutter less then 1.20.* then maybe this is not working properly
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: CustomSurffixIcon(svgIcon: "assets/icons/Mail.svg"),
      ),
    );
  }
}
