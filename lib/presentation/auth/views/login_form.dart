import 'package:flutter/material.dart';
import 'package:inter_login/presentation/auth/widgets/button_sign_in.dart';
import 'package:inter_login/presentation/auth/widgets/button_social.dart';
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
        const Spacer(flex: 10),
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
              Text('Login',
                  style: TextStyle(
                    fontFamily: 'NunitoSansExtrabold',
                    fontWeight: FontWeight.w600,
                    fontSize: 24,
                  ),
                  textAlign: TextAlign.start),
              Spacer(flex: 2),
              Text('Username', style: TextStyle(fontFamily: 'NunitoSansBold')),
              UsernameInputField(),
              Spacer(flex: 2),
              Text('Password', style: TextStyle(fontFamily: 'NunitoSansBold')),
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
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: SocialNetwork.availables
              .map((social) => ButtonSocial(
                    colorLeft: social.colorLeft,
                    colorRight: social.colorRight,
                    iconData: social.iconData,
                    urlRedirect: social.urlRedirect,
                  ))
              .toList(),
        ),
        const Spacer(flex: 2),
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
              fontFamily: 'NunitoSansBold',
              color: Color(0xFF00c6fb),
            )),
      ),
    );
  }
}
