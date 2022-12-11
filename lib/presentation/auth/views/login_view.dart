import 'package:flutter/material.dart';
import 'package:inter_login/const/resource.dart';
import 'package:inter_login/presentation/auth/views/login_form.dart';

class LoginView extends StatelessWidget {
  const LoginView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final height = MediaQuery.of(context).size.longestSide;
    return Theme(
      data: theme,
      child: SafeArea(
        child: Scaffold(
            body: SizedBox(
          height: double.maxFinite,
          child: SingleChildScrollView(
              reverse: true,
              //    keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
              child: Stack(
                children: [
                  Container(
                    constraints: const BoxConstraints(minHeight: 625),
                    height: height - 25,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Image.asset(R.ASSETS_IMAGE_HEADER_PNG),
                        const Spacer(),
                        Image.asset(R.ASSETS_IMAGE_FOOTER_PNG)
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(18.0),
                    child: Row(
                      children: [
                        Image.asset(R.ASSETS_LOGO_PNG),
                        const Text(
                          'Interseguro',
                          style: TextStyle(fontWeight: FontWeight.w600, fontSize: 18),
                        )
                      ],
                    ),
                  ),
                  Container(
                    constraints: const BoxConstraints(minHeight: 625),
                    height: height - 25,
                    child: const LoginForm(),
                  ),
                ],
              )),
        )),
      ),
    );
  }
}
