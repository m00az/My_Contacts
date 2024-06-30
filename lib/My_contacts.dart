import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import 'Socail_media_icon.dart';

class MyContacts extends StatelessWidget {
  MyContacts({super.key});

  Map<String, String> socialMediaIcons = {
    'facebook':
        'https://www.facebook.com/profile.php?id=61552756102462&mibextid=ZbWKwL',
    'whatsapp': 'https://wa.me/+201015036264',
    'gethup': 'https://github.com/m00az',
    'insta': 'https://www.instagram.com/m3az.a7med?igsh=OTllOGgwNnIycDZy',
    'youtube': 'https://youtube.com/@user-nu5iu6hx7u?si=80ewN04sLMSmK0iD',
    'pintrest': 'https://pin.it/1YMzwJcjI',
    'vimeo': 'https://vimeo.com/user222067732',
    'spotify':
        'https://open.spotify.com/user/31wrh24svlmckjka2krsozwpbpvi?si=9g3YaLNURQOWuWHpXMbYuA',
    'tiktok': 'http://tiktok.com/@moazahmed5546'
  };
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 5, 9, 25),
      body: SizedBox(
        width: double.infinity,
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 80,
              ),
              CircleAvatar(
                backgroundImage: AssetImage('assits/moaz2.jpg'),
                radius: 100,
              ),
              SizedBox(
                height: 80,
              ),
              Text(
                'Moaz ahmed mohamed',
                style: TextStyle(fontSize: 20, color: Colors.white),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    '+01015036264',
                    style: TextStyle(fontSize: 20, color: Colors.grey),
                  ),
                  IconButton(
                    onPressed: () {
                      launchUrl(Uri.parse('tel:+01015036264'));
                    },
                    icon: Icon(Icons.phone),
                    color: Colors.grey,
                  )
                ],
              ),
              SizedBox(
                height: 50,
              ),
              GridView.builder(
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
              )
            ],
          ),
        ),
      ),
    );
  }
}
