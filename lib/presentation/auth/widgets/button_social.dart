import 'package:flutter/material.dart';
import 'package:inter_login/const/custom_social_icons_icons.dart';
import 'package:url_launcher/url_launcher.dart';

class ButtonSocial extends StatelessWidget {
  final IconData iconData;
  final String urlRedirect;
  final Color colorRight;
  final Color colorLeft;
  const ButtonSocial(
      {super.key,
      required this.iconData,
      required this.urlRedirect,
      required this.colorRight,
      required this.colorLeft});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(50),
      onTap: () async {
        final Uri url = Uri.https(urlRedirect);
        if (!await launchUrl(url)) {
          ScaffoldMessenger.of(context).removeCurrentSnackBar();
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text('Could not launch $url')),
          );
        }
      },
      child: Container(
        width: 50,
        height: 50,
        margin: const EdgeInsets.symmetric(horizontal: 6),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [colorRight, colorLeft],
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
          ),
          borderRadius: BorderRadius.circular(50),
        ),
        child: Icon(
          iconData,
          color: Colors.white,
        ),
      ),
    );
  }
}

abstract class SocialNetwork {
  const SocialNetwork();
  IconData get iconData;
  String get urlRedirect;
  Color get colorRight;
  Color get colorLeft;

  static const List<SocialNetwork> availables = [
    Facebook(),
    Twitter(),
    Google(),
    Linkedin(),
  ];
}

class Facebook extends SocialNetwork {
  const Facebook();

  @override
  Color get colorRight => const Color(0xFF102397);

  @override
  Color get colorLeft => const Color(0xFF00EAF8);

  @override
  IconData get iconData => CustomSocialIcons.facebook;

  @override
  String get urlRedirect => 'facebook.com';
}

class Twitter extends SocialNetwork {
  const Twitter();

  @override
  Color get colorRight => const Color(0xFF17EAD9);

  @override
  Color get colorLeft => const Color(0xFF6078EA);

  @override
  IconData get iconData => CustomSocialIcons.twitter;

  @override
  String get urlRedirect => 'twitter.com';
}

class Linkedin extends SocialNetwork {
  const Linkedin();

  @override
  Color get colorRight => const Color(0xFF00C6FB);

  @override
  Color get colorLeft => const Color(0xFF005BEA);

  @override
  IconData get iconData => CustomSocialIcons.linkedin;

  @override
  String get urlRedirect => 'linkedin.com';
}

class Google extends SocialNetwork {
  const Google();

  @override
  Color get colorRight => const Color(0xFFFF4F38);

  @override
  Color get colorLeft => const Color(0xFFFF355D);

  @override
  IconData get iconData => CustomSocialIcons.google;

  @override
  String get urlRedirect => 'google.com';
}
