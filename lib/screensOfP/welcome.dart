import 'package:flutter/material.dart';
import 'package:task_login/coreOfP/color.dart';
import 'package:task_login/screensOfP/login.dart';
import 'package:task_login/screensOfP/register.dart';
import 'package:task_login/wedgits/button_wegdit.dart';

class Welcome extends StatelessWidget {
  const Welcome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          const Image(
            image: AssetImage('asset/book.jpg'),
            height: 1800,
            fit: BoxFit.fill,
          ),
          Padding(
            padding: const EdgeInsets.all(30),
            child: Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(
                    height: 150,
                  ),
                  const Text(
                    'Bookia',
                    style: TextStyle(fontSize: 50, fontWeight: FontWeight.w400),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Text(
                    'Order Your Book Now!',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w300),
                  ),
                  const SizedBox(
                    height: 430,
                  ),
                  ButtonWegdit(
                    text: 'Login',
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => const Login()));
                    },
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  SizedBox(
                    height: 50,
                    width: double.infinity,
                    child: OutlinedButton(
                        onPressed: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(builder: (context) => Register()));
                        },
                        style: ElevatedButton.styleFrom(
                            side: BorderSide(color: AppColor.bColor),
                            backgroundColor: AppColor.wColor,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10))),
                        child: Text(
                          'Register',
                          style: TextStyle(color: AppColor.bColor),
                        )),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
