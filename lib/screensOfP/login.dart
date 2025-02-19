import 'package:flutter/material.dart';
import 'package:task_login/coreOfP/color.dart';
import 'package:task_login/screensOfP/forget_password.dart';
import 'package:task_login/screensOfP/register.dart';
import 'package:task_login/screensOfP/welcome.dart';
import 'package:task_login/wedgits/button_wegdit.dart';
import 'package:task_login/wedgits/field.dart';
import 'package:task_login/wedgits/icon_social.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool isOpsecure = true;
  var formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.of(context)
                .push(MaterialPageRoute(builder: (context) => const Welcome()));
          },
          icon: const Icon(Icons.arrow_back),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(30),
        child: Form(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Welcome back! Glad',
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.w500),
                ),
                const Text(
                  'to see you, Again!',
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.w500),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Field(
                  text: 'Enter your email',
                  val: "this field can/'t be empty",
                ),
                const SizedBox(
                  height: 15,
                ),
                TextFormField(
                    validator: (value) {
                      if (value?.isEmpty == true) {
                        return "this field can/'t be empty";
                      }
                    },
                    obscureText: isOpsecure,
                    decoration: InputDecoration(
                      hintText: 'Enter your password',
                      suffixIcon: IconButton(
                        onPressed: () {
                          setState(() {
                            isOpsecure = !isOpsecure;
                          });
                        },
                        icon: isOpsecure
                            ? const Icon(Icons.visibility_off)
                            : const Icon(Icons.visibility),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      errorBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: const BorderSide(color: Colors.red)),
                      focusedErrorBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: const BorderSide(color: Colors.red)),
                    )),
                TextButton(
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => const ForgetPassword()));
                    },
                    child: const Text(
                      'Forget pasword?',
                      style: TextStyle(color: Colors.black),
                    )),
                const SizedBox(
                  height: 20,
                ),
                ButtonWegdit(
                    text: 'Login',
                    onPressed: () {
                      if (formKey.currentState!.validate()) {
                        Navigator.of(context).push(
                            MaterialPageRoute(builder: (context) => Welcome()));
                      }
                    }),
                const SizedBox(
                  height: 35,
                ),
                const Row(
                  children: [
                    Expanded(child: Divider()),
                    Text('Or Login with'),
                    Expanded(child: Divider()),
                  ],
                ),
                const SizedBox(
                  height: 30,
                ),
                const Row(
                  children: [
                    IconSocial(
                      iconSocial: Icon(
                        Icons.facebook,
                        color: Colors.blue,
                      ),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    IconSocial(
                      iconSocial: Icon(
                        Icons.tiktok,
                        color: Colors.black,
                      ),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    IconSocial(
                      iconSocial: Icon(
                        Icons.apple,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 200,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Don\'t have an account?'),
                    TextButton(
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => Register()));
                        },
                        child: Text(
                          'Register Now',
                          style: TextStyle(color: AppColor.buttonColor),
                        ))
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
