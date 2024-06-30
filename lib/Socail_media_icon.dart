import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class SocialMedia extends StatelessWidget {
  String socialmedia;
  String socialmediaLink;
  SocialMedia({
    super.key,
    required this.socialmedia,
    required this.socialmediaLink,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Padding(
        padding: const EdgeInsets.all(11),
        child: InkWell(
          child: CircleAvatar(
            backgroundImage: AssetImage('assits/$socialmedia.jpg'),
            radius: 40,
          ),
          onTap: () {
            launchUrl(Uri.parse(socialmediaLink),mode: LaunchMode.externalApplication);
          },
        ),
      ),
    );
  }
}
