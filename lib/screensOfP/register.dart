import 'package:flutter/material.dart';
import 'package:task_login/coreOfP/color.dart';
import 'package:task_login/screensOfP/login.dart';
import 'package:task_login/screensOfP/welcome.dart';
import 'package:task_login/wedgits/button_wegdit.dart';
import 'package:task_login/wedgits/field.dart';


class Register extends StatelessWidget {
  const Register({super.key});

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
                  'Hello! Register to get',
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.w500),
                ),
                const Text(
                  'started',
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.w500),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Field(
                  text: 'Username',
                  val:"this field can/'t be empty",
                  
                ),
                 const SizedBox(
                  height: 20,
                ),
                const Field(
                  text: 'Email',
                  val:"this field can/'t be empty",
                  
                ),
                 const SizedBox(
                  height: 20,
                ),
                const Field(
                  text: 'Password',
                  val:"this field can/'t be empty",
                  
                ),
                 const SizedBox(
                  height: 20,
                ),
                const Field(
                  text: 'Confirm password',
                  val:"this field can/'t be empty",
                  
                ),
                 const SizedBox(
                  height: 30,
                ),
                ButtonWegdit(
                    text: 'Register',
                    onPressed: () {
                      if (formKey.currentState!.validate()) {
                        Navigator.of(context).push(
                            MaterialPageRoute(builder: (context) => Welcome()));
                      }
                    }),
                SizedBox(height: 210,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Already have an account?'),
                    TextButton(
                        onPressed: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(builder: (context) => Login()));
                        },
                        child: Text(
                          'Login Now',
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