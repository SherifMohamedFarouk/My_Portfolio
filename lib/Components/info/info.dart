import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../core/color/colors.dart';

class INFO extends StatelessWidget {
  const INFO({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          SizedBox(
            height: 10.h,
          ),
          const Text(
            'Engineer, Mobile Developer',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            // height: 20,
            height: 2.h,
          ),
          Text(
            'I design and code mobile and web application with Flutter (Dart) and Android (Kotlin and Java )',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 3.sp > 13 ? 3.sp : 13),
          ),
          SizedBox(
            height: 5.h,
          ),
          Container(
            decoration: BoxDecoration(border: Border.all(color: primaryColor)),
            // width: 250,
            // height: 250,
            child: Image.network(
              'https://cdn.dribbble.com/users/330915/screenshots/3587000/10_coding_dribbble.gif',
              fit: BoxFit.cover,
            ),
          ),
          // SizedBox(
          //   height: 50,
          // ),
          Container(
            width: double.infinity,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 1.w, vertical: 1.h),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 5.h,
                  ),
                  Text(
                    'Hi, my name is Sherif.',
                    style: TextStyle(
                      fontSize: 25.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 2.h,
                  ),
                  Container(
                    height: 30.h,
                    width: 70.w,
                    child: Text(
                      'Passionate and highly effective developer who has successfully developed applications for Flutter (Dart) and Android with (Kotlin and Java ). Well-educated and poised , Seeking an exciting opportunity to create and test applications.',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 3.sp > 13 ? 3.sp : 13),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
