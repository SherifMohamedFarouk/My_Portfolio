import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:my_portfolio_web/core/theme/app_theme.dart';
import '../../core/color/colors.dart';
import '../../core/constant/url_launcher.dart';

class ContactMe extends StatelessWidget {
  const ContactMe({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return Stack(
      alignment: Alignment.bottomCenter,
      clipBehavior: Clip.none,
      children: [
        Container(
          decoration: BoxDecoration(
            gradient: theme.contactCard,
            borderRadius: BorderRadius.circular(30),
            boxShadow: [blackColorShadow],
          ),
          height: 200,
          width: 1200,
          child: Center(
            child: InkWell(
              onTap: () {
                openURL(
                    'https://drive.google.com/file/d/1oXwJMH3utWu7SRpTV4PWB6RkX6fNNbah/view');
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: const [
                  Icon(
                    MdiIcons.filePdfBox,
                    color: Colors.red,
                    size: 44,
                  ),
                  Text(
                    "Open CV",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 22.0,
                        color: Colors.blueAccent),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
