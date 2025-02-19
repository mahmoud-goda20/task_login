import 'package:flutter/material.dart';
import 'package:task_login/coreOfP/color.dart';
import 'package:task_login/screensOfP/login.dart';
import 'package:task_login/screensOfP/welcome.dart';
import 'package:task_login/wedgits/button_wegdit.dart';
import 'package:task_login/wedgits/field.dart';

class ForgetPassword extends StatelessWidget {
  const ForgetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    var formKey = GlobalKey<FormState>();
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.of(context)
                .push(MaterialPageRoute(builder: (context) => const Login()));
          },
          icon: const Icon(Icons.arrow_back),
        ),
      ),
      body:  Padding(
        padding: const EdgeInsets.all(30),
        child: Form(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Forget Password?',
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.w500),
                ),
                SizedBox(height: 10,),
                const Text(
                  'Don\'t worry! it occurs.please enter the email address linked with your account ',
                  style: TextStyle(fontSize: 15,),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Field(
                  text: 'Enter your email',
                  val:"this field can/'t be empty",
                  
                ),
                SizedBox(height: 30,),
                 
                ButtonWegdit(
                    text: 'Send Code',
                    onPressed: () {
                      if (formKey.currentState!.validate()) {
                        Navigator.of(context).push(
                            MaterialPageRoute(builder: (context) => Welcome()));
                      }
                    }),
                SizedBox(height: 430,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Remember Password?'),
                    TextButton(
                        onPressed: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(builder: (context) => Login()));
                        },
                        child: Text(
                          'Login ',
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