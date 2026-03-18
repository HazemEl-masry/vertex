import 'package:flutter/material.dart';
import 'package:vertex/core/widgets/social_media_button.dart';

class SocialMediaSection extends StatelessWidget {
  const SocialMediaSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SocialMediaButton(
          iconPath: "assets/svg/icons8-facebook.svg",
          onPressed: () {},
        ),
        SocialMediaButton(
          iconPath: "assets/svg/icons8-google.svg",
          onPressed: () {},
        ),
        SocialMediaButton(
          iconPath: "assets/svg/icons8-apple.svg",
          onPressed: () {},
        ),
      ],
    );
  }
}
