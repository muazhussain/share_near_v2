import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:share_near_v2/src/screens/user-profile/components/profile_picture.dart';
import 'package:share_near_v2/src/size_config.dart';

import '../../../constants.dart';

class UserProfileBody extends StatelessWidget {
  const UserProfileBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const ProfilePicture(),
        SizedBox(
          height: SizeConfig.screenHeight * 0.08,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: ListTile(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            ),
            tileColor: const Color(0xFFF5F6F9),
            leading: SvgPicture.asset(
              'assets/icons/User Icon.svg',
              width: 22,
              // ignore: deprecated_member_use
              color: primaryColor,
            ),
            title: Text(
              'My Account',
              style: Theme.of(context).textTheme.bodyLarge,
            ),
            trailing: const Icon(Icons.arrow_forward_ios),
          ),
        ),
      ],
    );
  }
}
