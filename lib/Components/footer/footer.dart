import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:sizer/sizer.dart';

import '../../core/constant/url_launcher.dart';

class Footer extends StatelessWidget {
  const Footer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.symmetric(vertical: 70),
      child: Column(
        children: [
          SizedBox(
            height: 2.h,
          ),
         const  Text(
            'Here is my social links :',
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.w300),
          ),
          SizedBox(
            height: 2.h,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                icon: FontAwesomeIcons.linkedin,
                onTap: () => openURL(
                    'https://www.linkedin.com/in/sherifmohamedkazamel/'),
              ),
              IconButton(
                icon: FontAwesomeIcons.github,
                onTap: () => openURL('https://github.com/SherifMohamedFarouk'),
              ),
            ],
          ),
          SizedBox(
            height: 5.h,
          ),
          Text(
            'Made by Sherif Farouk',
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.w300),
          ),
          SizedBox(
            height: 2.h,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Made with',
                style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                width: 10,
              ),
              SizedBox(
                  height: 50,
                  width: 100,
                  child: Image.asset(
                    'assets/images/flutter.png',
                    fit: BoxFit.contain,
                  )),
            ],
          )
        ],
      ),
    );
  }
}

class IconButton extends StatelessWidget {
  final IconData icon;
  final VoidCallback? onTap;

  const IconButton({required this.icon, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: ElevatedButton(
        onPressed: onTap,
        child: Icon(
          icon,
          color: Colors.black,
          size: 20,
        ),
        style: ElevatedButton.styleFrom(
          elevation: 0,
          backgroundColor: Color.fromRGBO(117, 16, 247, 1.0),
          shape: CircleBorder(),
          padding: EdgeInsets.all(18),
        ),
      ),
    );
  }
}
