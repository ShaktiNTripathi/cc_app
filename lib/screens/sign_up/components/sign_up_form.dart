import 'package:cybercyld/screens/otp/otp_screen.dart';
import 'package:flutter/material.dart';
import 'package:cybercyld/components/custom_surfix_icon.dart';
import 'package:cybercyld/components/default_button.dart';
//import 'package:cybercyld/models/login_request_model.dart';
import 'package:cybercyld/models/register_request_model.dart';
//import 'package:cybercyld/services/api_service.dart';
import 'package:snippet_coder_utils/FormHelper.dart';
// import 'package:snippet_coder_utils/ProgressHUD.dart';
// import 'package:snippet_coder_utils/hex_color.dart';
import '../../../config.dart';
import '../../../constants.dart';
import '../../../size_config.dart';
import '../../services/api_service.dart';

class SignUpForm extends StatefulWidget {
  const SignUpForm({Key? key}) : super(key: key);

  @override
  _SignUpFormState createState() => _SignUpFormState();
}

class _SignUpFormState extends State<SignUpForm> {
  final _formKey = GlobalKey<FormState>();
  String? email;
  String? name;
  String? uid;
  String? password;
  String? conform_password;
  bool remember = false;
  bool isApiCallProcess = false;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          buildUIDFormField(),
          SizedBox(height: getProportionateScreenHeight(30)),
          buildNameFormField(),
          SizedBox(height: getProportionateScreenHeight(30)),
          buildEmailFormField(),
          SizedBox(height: getProportionateScreenHeight(30)),
          buildPasswordFormField(),
          SizedBox(height: getProportionateScreenHeight(30)),
          buildConformPassFormField(),
          SizedBox(height: getProportionateScreenHeight(40)),
          DefaultButton(
            text: isApiCallProcess ? "Processing..." : "Continue",
            press: isApiCallProcess
                ? null
                : () async {
                    if (_formKey.currentState!.validate()) {
                      _formKey.currentState!.save();
                      RegisterRequestModel model = RegisterRequestModel(
                        uid: uid,
                        name: name,
                        password: password,
                        email: email,
                      );
                      setState(() {
                        isApiCallProcess = true;
                      });
                      final response = await APIService.register(model);
                      setState(() {
                        isApiCallProcess = false;
                      });
                      if (response.success) {
                        FormHelper.showSimpleAlertDialog(
                          context,
                          Config.appName,
                          response.message ??
                              "Registration successfully. Please verify otp send to mail",
                          "OK",
                          () {
                            Navigator.pushReplacement(context,
                                MaterialPageRoute(builder: (_) => const OtpScreen()));
                          },
                        );
                      } else {
                        FormHelper.showSimpleAlertDialog(
                          context,
                          Config.appName,
                          response.message ?? '',
                          "OK",
                          () {
                            Navigator.of(context).pop();
                          },
                        );
                      }
                      // if all are valid then go to success screen
                      //Navigator.pushNamed(context, CompleteProfileScreen.routeName);
                    }
                  },
          ),
        ],
      ),
    );
  }

  TextFormField buildConformPassFormField() {
    return TextFormField(
      obscureText: true,
      onSaved: (newValue) => conform_password = newValue,
      onChanged: (value) {
        conform_password = value;
      },
      validator: (value) {
        if (value == null) {
          return "Confirm password is required";
        } else if (value.isEmpty) {
          return "Confirm password is required";
        } else if ((password != value)) {
          return kMatchPassError;
        }
        return null;
      },
      decoration: const InputDecoration(
        labelText: "Confirm Password",
        hintText: "Re-enter your password",
        // If  you are using latest version of flutter then lable text and hint text shown like this
        // if you r using flutter less then 1.20.* then maybe this is not working properly
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: CustomSurffixIcon(svgIcon: "assets/icons/Lock.svg"),
      ),
    );
  }

  TextFormField buildPasswordFormField() {
    return TextFormField(
      obscureText: true,
      onSaved: (newValue) => password = newValue,
      onChanged: (value) {
        password = value;
      },
      validator: (value) {
        if (value == null) {
          return kPassNullError;
        } else if (value.isEmpty) {
          return kPassNullError;
        } else if (value.length <= 8) {
          return kShortPassError;
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
        } else if (!emailValidatorRegExp.hasMatch(value)) {
          return kInvalidEmailError;
        }
        return null;
      },
      decoration: const InputDecoration(
        labelText: "Email",
        hintText: "Enter your email",
        // If  you are using latest version of flutter then lable text and hint text shown like this
        // if you r using flutter less then 1.20.* then maybe this is not working properly
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: CustomSurffixIcon(svgIcon: "assets/icons/Mail.svg"),
      ),
    );
  }

  TextFormField buildUIDFormField() {
    return TextFormField(
      onSaved: (newValue) => uid = newValue,
      onChanged: (value) {
        uid = value;
      },
      validator: (value) {
        if (value == null) {
          return "User id field is required";
        } else if (value.isEmpty) {
          return "User id field is required";
        }
        return null;
      },
      decoration: const InputDecoration(
        labelText: "User id",
        hintText: "Enter your user id",
        // If  you are using latest version of flutter then lable text and hint text shown like this
        // if you r using flutter less then 1.20.* then maybe this is not working properly
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: CustomSurffixIcon(svgIcon: "assets/icons/Mail.svg"),
      ),
    );
  }

  TextFormField buildNameFormField() {
    return TextFormField(
      keyboardType: TextInputType.name,
      onSaved: (newValue) => name = newValue,
      onChanged: (value) {
        name = name;
      },
      validator: (value) {
        if (value == null) {
          return "Name is required";
        } else if (value.isEmpty) {
          return "Name is required";
        }
        return null;
      },
      decoration: const InputDecoration(
        labelText: "Name",
        hintText: "Enter your name",
        // If  you are using latest version of flutter then lable text and hint text shown like this
        // if you r using flutter less then 1.20.* then maybe this is not working properly
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: CustomSurffixIcon(svgIcon: "assets/icons/Mail.svg"),
      ),
    );
  }
}

bool validateAndSave() {
  // final form = globalFormKey.currentState;
  // if (form!.validate()) {
  // form.save();
  // return true;
  // }
  return false;
}
