import 'package:consultation_system/auth/login_page.dart';
import 'package:consultation_system/constant/colors.dart';
import 'package:consultation_system/repositories/auth_repository.dart';
import 'package:consultation_system/widgets/text_widget.dart';
import 'package:flutter/material.dart';

class SignupPage extends StatelessWidget {
  SignupPage({super.key});

  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _firstNameController = TextEditingController();
  final TextEditingController _middleNameController = TextEditingController();
  final TextEditingController _surNameController = TextEditingController();
  final TextEditingController _contactNumberController =
      TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/images/background.jpg'),
                  fit: BoxFit.cover),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 80, bottom: 50),
            child: Align(
              alignment: Alignment.bottomRight,
              child: Container(
                height: 550,
                width: 400,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.grey[100]),
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(30, 10, 30, 10),
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(
                          height: 20,
                        ),
                        BoldText(label: 'Signup', fontSize: 24, color: primary),
                        NormalText(
                            label: 'Create your account',
                            fontSize: 14,
                            color: Colors.black),
                        const SizedBox(
                          height: 20,
                        ),
                        Container(
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(5)),
                          child: TextFormField(
                            controller: _firstNameController,
                            decoration: const InputDecoration(
                                labelText: '    First name'),
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Container(
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(5)),
                          child: TextFormField(
                            controller: _middleNameController,
                            decoration: const InputDecoration(
                                labelText: '    Middle name'),
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Container(
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(5)),
                          child: TextFormField(
                            controller: _surNameController,
                            decoration:
                                const InputDecoration(labelText: '    Surname'),
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Container(
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(5)),
                          child: TextFormField(
                            controller: _contactNumberController,
                            decoration: const InputDecoration(
                                labelText: '    Contact Number'),
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Container(
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(5)),
                          child: TextFormField(
                            controller: _emailController,
                            decoration: const InputDecoration(
                                prefixIcon: Icon(Icons.email),
                                labelText: '    Email'),
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Container(
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(5)),
                          child: TextFormField(
                            controller: _passwordController,
                            decoration: const InputDecoration(
                                prefixIcon: Icon(Icons.lock),
                                labelText: '    Password'),
                          ),
                        ),
                        const SizedBox(
                          height: 50,
                        ),
                        Center(
                          child: MaterialButton(
                              minWidth: 300,
                              color: primary,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(100)),
                              onPressed: (() {
                                AuthRepository().userSignUp(
                                    _firstNameController.text,
                                    _middleNameController.text,
                                    _surNameController.text,
                                    _contactNumberController.text,
                                    _emailController.text,
                                    _passwordController.text,
                                    '');

                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) => LoginPage()));
                              }),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: NormalText(
                                    label: 'Signup',
                                    fontSize: 24,
                                    color: Colors.white),
                              )),
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            NormalText(
                                label: 'Already have an account?',
                                fontSize: 14,
                                color: Colors.grey),
                            TextButton(
                              onPressed: (() {
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) => LoginPage()));
                              }),
                              child: NormalText(
                                  label: 'Login now',
                                  fontSize: 16,
                                  color: Colors.black),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}