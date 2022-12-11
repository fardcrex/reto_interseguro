import 'package:flutter/material.dart';
import 'package:inter_login/presentation/auth/widgets/button_sign_in.dart';
import 'package:inter_login/presentation/auth/widgets/checkbox_remember_me.dart';
import 'package:inter_login/presentation/auth/widgets/inputs.dart';
import 'package:inter_login/presentation/auth/widgets/social_widgets.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.longestSide;
    return Column(
      children: [
        const Spacer(flex: 3),
        Container(
          height: height * 0.4,
          padding: const EdgeInsets.all(18.0),
          margin: const EdgeInsets.all(25.0),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.shade300,
                blurRadius: 12.0,
                spreadRadius: 8.0,
                offset: const Offset(0.0, 0.0),
              ),
            ],
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: const [
              Text('Login', style: TextStyle(fontWeight: FontWeight.w600, fontSize: 22), textAlign: TextAlign.start),
              Spacer(),
              Text('Username', style: TextStyle()),
              UsernameInputField(),
              Spacer(flex: 2),
              Text('Password', style: TextStyle()),
              PasswordInputField(),
              Spacer(),
              _ForgotButton(),
              Spacer(flex: 3),
            ],
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: const [
            CheckBoxRememberMe(),
            ButtonSignIn(),
          ],
        ),
        const Spacer(),
        const SocialLoginWidget(),
        const Spacer(),
      ],
    );
  }
}

class _ForgotButton extends StatelessWidget {
  const _ForgotButton();

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: TextButton(
        onPressed: () {},
        child: const Text('Forgot Password?',
            style: TextStyle(
              fontWeight: FontWeight.w500,
              color: Color(0xFF00c6fb),
            )),
      ),
    );
  }
}
