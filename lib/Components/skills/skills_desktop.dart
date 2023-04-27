import 'package:flutter/material.dart';
import 'package:my_portfolio_web/Components/skills/role_widget.dart';
import 'package:my_portfolio_web/core/theme/app_theme.dart';

import '../../core/color/colors.dart';

class SkillsDesktop extends StatelessWidget {
  const SkillsDesktop({
    Key? key,
    required this.theme,
  }) : super(key: key);

  final ThemeData theme;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Spacer(),
        Expanded(
          flex: 6,
          child: Container(
            decoration: BoxDecoration(
              gradient: theme.contactCard,
              borderRadius: BorderRadius.circular(30),
              boxShadow: [blackColorShadow],
            ),
            child: IntrinsicHeight(
              child: Row(
                children: const [
                  Expanded(
                    child: RoleWidget(
                      imageUrl:
                      'assets/images/flutter.png',
                      isNetwork: false,
                      role: 'Flutter Mobile/Web Developer',
                      roleDescription:
                      'I like to code things from scratch, and enjoy bringing ideas to life.',
                      whatIDoTitle: 'Languages I use:',
                      whatIDo: 'Flutter, Dart',
                      skill: 'Dev Tools:',
                      skillNames:
                      'Flutter\n\nGIT\n\nJSON\n\nFirebase\n\nSQl',
                    ),
                  ),
                  VerticalDivider(
                    thickness: 1,
                    color: primaryColor,
                  ),
                  Expanded(
                    child: RoleWidget(
                      imageUrl:
                      'assets/images/android.png',
                      isNetwork: false,
                      role: 'Android Developer',
                      roleDescription:
                      'Involved in all aspects of the Android from research and planning through deployment and post-launch support.',
                      whatIDoTitle: 'Languages I use:',
                      whatIDo: 'Android, kotlin, Java',
                      skill: 'Dev Tools:',
                      skillNames: 'Android\n\nXML\n\nJSON\n\nFirebase',
                    ),
                  ),
                  SizedBox(
                    width: 16,
                  ),
                ],
              ),
            ),
          ),
        ),
        const Spacer(),
      ],
    );
  }
}
