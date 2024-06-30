import 'package:flutter/material.dart';

import 'Socail_media_icon.dart';

class ContactsGrid extends StatelessWidget {
  const ContactsGrid({
    super.key,
    required this.socialMediaIcons,
  });

  final Map<String, String> socialMediaIcons;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: socialMediaIcons.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3),
      itemBuilder: (context, index) {
        return SocialMedia(
          socialmedia: socialMediaIcons.keys.toList()[index],
          socialmediaLink: socialMediaIcons.values.toList()[index],
        );
      },
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      padding: EdgeInsets.all(12),
    );
  }
}