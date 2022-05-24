import 'package:flutter/material.dart';
import 'package:healthier_you_bismillah/home/home_page.dart';
import 'package:healthier_you_bismillah/signup/signup_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  get child => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(235, 219, 216, 20),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 25.0, right: 25.0, top: 190.0),
          child: Column(
            children: [
              _logInTitle(),
              const SizedBox(
                height: 60,
              ),
              _userNameTextField(),
              const SizedBox(
                height: 30,
              ),
              _passwordTextField(),
              const SizedBox(
                height: 5,
              ),
              const SizedBox(
                width: double.infinity,
                child: Text(
                  'Forgot Password?',
                  style: TextStyle(
                    fontSize: 12,
                  ),
                  textAlign: TextAlign.right,
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              _loginButton(),
              const SizedBox(
                height: 3,
              ),
              _registerButton(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _logInTitle() {
    return const Padding(
      padding: EdgeInsets.all(20),
      child: Text(
        'Login',
        style: TextStyle(
          fontSize: 55,
          fontWeight: FontWeight.bold,
        ),
        textAlign: TextAlign.center,
      ),
    );
  }

  Widget _userNameTextField() {
    return TextFormField(
      decoration: InputDecoration(
          fillColor: const Color.fromRGBO(243, 101, 101, 100),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(100.0),
          ),
          filled: true,
          labelText: 'Username',
          floatingLabelBehavior: FloatingLabelBehavior.auto),
    );
  }

  Widget _passwordTextField() {
    return TextField(
      obscureText: true,
      decoration: InputDecoration(
        fillColor: Colors.white,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(100.0),
        ),
        filled: true,
        labelText: 'Password',
        floatingLabelBehavior: FloatingLabelBehavior.auto,
      ),
    );
  }

  Widget _loginButton() {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
          primary: const Color.fromRGBO(243, 101, 101, 100),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(100.0),
          )),
      onPressed: () => _loginButtonFunction(),
      child: const Text(
        'LOGIN',
        style: TextStyle(
          color: Colors.white,
        ),
      ),
    );
  }

  void _loginButtonFunction() {
    Navigator.pushAndRemoveUntil(
        context,
        MaterialPageRoute(
          builder: (context) => HomePage(),
        ),
        (route) => false);
  }

  Widget _registerButton() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text("Do you already have an account?",
            style: TextStyle(
              fontSize: 12,
            )),
        InkWell(
          child: const Text(
            ' Sign up!',
            style: TextStyle(
              fontSize: 12,
              fontStyle: FontStyle.italic,
              decoration: TextDecoration.underline,
            ),
          ),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const SignupPage(),
              ),
            );
          },
        )
      ],
    );
  }
}
