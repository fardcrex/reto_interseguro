import 'package:flutter/material.dart';

class SocialLoginWidget extends StatelessWidget {
  const SocialLoginWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          width: 60,
          height: 1,
          color: Colors.grey,
        ),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Text(
            'Social Login',
            style: TextStyle(fontFamily: 'NunitoSansSemibold', fontWeight: FontWeight.w500, fontSize: 18),
          ),
        ),
        Container(
          width: 60,
          height: 1,
          color: Colors.grey,
        ),
      ],
    );
  }
}
