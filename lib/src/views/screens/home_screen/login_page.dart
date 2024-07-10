import 'package:flutter/material.dart';
import 'package:shoping/src/utils/custom_buttom.dart';
import 'package:shoping/src/utils/custom_text.dart';
import 'package:shoping/src/utils/custom_text_field.dart';
import 'package:shoping/src/views/screens/home_screen/signup_page.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});
  final emilController = TextEditingController();
  final passwordController = TextEditingController();
  final formstate = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Center(
            child: Image(
              image: AssetImage('assets/images/image1.png'),
              fit: BoxFit.cover,
            ),
          ),
          Expanded(
            child: Container(
              width: double.infinity,
              decoration: const BoxDecoration(
                  borderRadius:
                      BorderRadius.vertical(top: Radius.circular(40.0)),
                  color: Color(0XFF76F3D0)),
              child: Padding(
                padding: const EdgeInsets.all(30.0),
                child: Form(
                  key: formstate,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Log in',
                        style: TextStyle(fontSize: 30),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      custom_text_field(
                          controller: emilController,
                          text: 'Email',
                          obscureText: false,
                          validator: (value) {
                            if (value!.isEmpty) {
                              return 'plase Enter The Email';
                            }
                            return null;
                          },
                          KeyboardType: TextInputType.emailAddress),
                      const SizedBox(
                        height: 20,
                      ),
                      custom_text_field(
                          controller: passwordController,
                          text: 'Paswword',
                          obscureText: true,
                          validator: (value) {
                            if (value!.isEmpty) {
                              return 'plase Enter The Paswword';
                            }
                            return null;
                          },
                          KeyboardType: TextInputType.visiblePassword),
                      const SizedBox(
                        height: 20,
                      ),
                      Row(
                        children: [
                          const Text('Dont have an account?'),
                          const Spacer(),
                          CustomTextButtom(
                              function: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => SignupPage(),
                                    ));
                              },
                              text: 'Sign up')
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      CustomButtom(
                          text: 'Log in',
                          function: () {
                            if (formstate.currentState!.validate()) {}
                          })
                    ],
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
