import 'package:flutter/material.dart';
import '../../core/theme/app_theme.dart';
import '../../core/responsive/responsive.dart';

class NavTitle extends StatelessWidget {
  const NavTitle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // theme
    var theme = Theme.of(context);
    //
    var textSty = TextStyle(
      color: theme.textColor,
      fontWeight: FontWeight.w100,
      fontSize: Responsive.isDesktop(context) ? 32 : 20,
    );

    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        // Text("< ", style: textSty),
        Text("Sherif Farouk", style: textSty),
        // Text(
        //   Responsive.isDesktop(context) ? " />\t\t" : " />",
        //   style: textSty,
        // )
      ],
    );
  }
}
