import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:helpy/src/ui/common/app_colors.dart';
import 'package:helpy/src/ui/survey/survey_list.page.dart';

class ProfilePage extends StatefulWidget {
  ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(24, 24, 24, 0),
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                // mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SvgPicture.asset(
                    'assets/icons/logo.svg',
                    width: 52,
                    height: 52,
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  const Text(
                    'Helpy',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
                  ),
                ],
              ),
              const SizedBox(
                height: 100,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
