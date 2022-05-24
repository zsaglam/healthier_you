import 'package:flutter/material.dart';
import 'package:healthier_you_bismillah/home/home_page.dart';
import 'package:healthier_you_bismillah/login/login_page.dart';

class SignupPage extends StatefulWidget {
  const SignupPage({Key? key}) : super(key: key);

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(235, 219, 216, 20),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 25.0, right: 25.0, top: 150.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              _signUpTitle(),
              const SizedBox(
                height: 60,
              ),
              _userNameEntryTextField(),
              const SizedBox(
                height: 30,
              ),
              _emailEntryTextField(),
              const SizedBox(
                height: 30,
              ),
              _passwordEntryTextField(),
              const SizedBox(
                height: 35,
              ),
              _signUpButton(),
              const SizedBox(
                height: 3,
              ),
              _secondLoginButton(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _signUpTitle() {
    return const Padding(
      padding: EdgeInsets.all(20),
      child: Text(
        'Sign Up',
        style: TextStyle(
          fontSize: 55,
          fontWeight: FontWeight.bold,
        ),
        textAlign: TextAlign.center,
      ),
    );
  }

  Widget _userNameEntryTextField() {
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

  Widget _emailEntryTextField() {
    return TextFormField(
      decoration: InputDecoration(
          fillColor: const Color.fromRGBO(243, 101, 101, 100),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(100.0),
          ),
          filled: true,
          labelText: 'E-Mail',
          floatingLabelBehavior: FloatingLabelBehavior.auto),
    );
  }

  Widget _passwordEntryTextField() {
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

  Widget _signUpButton() {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
          primary: const Color.fromRGBO(243, 101, 101, 100),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(100.0),
          )),
      onPressed: () => _signUpButtonFunction(),
      child: Container(
        color: const Color.fromRGBO(243, 101, 101, 100),
        child: const Text(
          'SIGN UP',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
    );
  }

  void _signUpButtonFunction() {
    Navigator.pushAndRemoveUntil(
        context,
        MaterialPageRoute(
          builder: (context) => const LoginPage(),
        ),
        (route) => false);
  }

  Widget _secondLoginButton() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text("Do you already have an account?",
            style: TextStyle(
              fontSize: 12,
            )),
        InkWell(
          child: const Text(
            ' Log in!',
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
                builder: (context) => LoginPage(),
              ),
            );
          },
        )
      ],
    );
  }
}
