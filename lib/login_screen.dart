// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, use_key_in_widget_constructors, non_constant_identifier_names

import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text('Login Page (Grp 23)'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Form(
          child: ListView(
            children: [
              CircleAvatar(
                backgroundImage: AssetImage('assets/main.png'),
                radius: 55,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 15, bottom: 5),
                child: Text(
                  'Welcome',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
                  textAlign: TextAlign.center,
                ),
              ),
              Text(
                'Login to your acccount to continue',
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 12, color: Theme.of(context).primaryColor),
              ),
              TextFieldInputs(
                'johndoe@gmail.com',
                Icons.person,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 15),
                child: TextFieldInputs(
                  'Password',
                  Icons.lock_open_outlined,
                ),
              ),
              InkWell(
                child: Padding(
                  padding:
                      const EdgeInsets.only(top: 15, right: 10, bottom: 20),
                  child: Text(
                    'Forgot Password?',
                    style: TextStyle(color: Colors.grey, fontSize: 12),
                    textAlign: TextAlign.end,
                  ),
                ),
                onTap: () {},
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(5, 10, 5, 5),
                child: ElevatedButton(
                  style: ButtonStyle(
                      shape: MaterialStateProperty.all(RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10))),
                      backgroundColor: MaterialStateProperty.all(Colors.green)),
                  onPressed: () {},
                  child: Container(
                    margin: EdgeInsets.symmetric(vertical: 15),
                    child: Text(
                      'Login',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  DrawLine(height: 1, width: 80),
                  Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Text(
                      'OR',
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                  DrawLine(height: 1, width: 80),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 20),
                    child: textbuttons('assets/googleIcon.png'),
                  ),
                  textbuttons('assets/facebookIcon.png'),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Don\'t have an account?',
                    style: TextStyle(color: Colors.grey, fontSize: 12),
                  ),
                  Text(
                    '  Sign up',
                    style: TextStyle(color: Colors.green, fontSize: 12),
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: DrawLine(height: 1, width: 100),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Padding textbuttons(String path) {
    /* SizedBox(
                    height: 40,
                    width: 100,
                    child: InkWell(
                      onTap: () {},
                      child: Image.asset('assets/googleIcon.png'),
                    ),
                  ), */
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: SizedBox(
        width: 80,
        height: 40,
        child: TextButton(
            style: ButtonStyle(
                shape: MaterialStateProperty.all(RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
              side: BorderSide(width: 2, color: Colors.grey),
            ))),
            onPressed: () {},
            child: Image(image: AssetImage(path))),
      ),
    );
  }

  Container DrawLine({required double width, required double height}) {
    return Container(
      height: height,
      width: width,
      color: Colors.grey,
    );
  }
}

class TextFieldInputs extends StatelessWidget {
  final String label;
  final IconData icon;
  const TextFieldInputs(this.label, this.icon);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20),
      child: TextFormField(
        decoration: InputDecoration(
          border: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(10.0))),
          label: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Icon(
                  icon,
                  size: 14,
                  color: Theme.of(context).primaryColor,
                ),
              ),
              Text(
                label,
                style: TextStyle(
                    fontSize: 12, color: Theme.of(context).primaryColor),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
