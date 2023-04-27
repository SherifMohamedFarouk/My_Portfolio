import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:my_portfolio_web/core/theme/app_theme.dart';
import 'package:sizer/sizer.dart';
import '../../core/color/colors.dart';
import '../../core/constant/url_launcher.dart';
import '../../core/responsive/responsive.dart';
import 'card_data.dart';

class ProjectCards extends StatelessWidget {
  final List<CardData> cardContent = [
    CardData(
        projectDesc:
            '''- It is a music app developed by Flutter Dart, where the user can post and listen to music, and connect to Spotify and apple music, send songs from apple to Spotify and vice versa.
- it includes a profile page and onboarding phase where the user sees the top artist this month and makes their own vibe check to connect with other users. and more.''',
        projectScreen1: 'assets/truzi/Capture1.PNG',
        projectScreen2: 'assets/truzi/Capture3.PNG',
        projectScreen3: 'assets/truzi/Capture6.PNG',
        inDevelopment: true,
        type: "Mobile App"),
    CardData(
        projectDesc:
            '''- Easylife app is designed to simplify and enhance the neighborhood living experience. Whether you're part of a homeowners' association, a gated community, or a country club, our platform provides a one-stop solution for managing community activities.One of the key features of our app is easy booking for activities. If you're looking for recreational activities like golf, tennis, or swimming and more. 
- Used Flutter, Dart, Firebase, and MVVM.''',
        projectScreen1: 'assets/easylife/Capture.PNG',
        projectScreen2: 'assets/easylife/Capture4.PNG',
        projectScreen3: 'assets/easylife/Capture7.PNG',
        projectUrlApple:
            'https://apps.apple.com/app/easy-life-llc/id6446297625',
        projectUrlGoogle:
            'https://play.google.com/store/apps/details?id=com.clubhub.easylife&pli=1',
        type: "Mobile App"),
    CardData(
        projectDesc:
            '''- Leopelle developed by Flutter Dart specializes in genuine leather for furniture and home accessories, as well as leather accessories, and cladding.
- Developed QR code system to attend the events and more. 
- Used Flutter, Dart, Firebase, and MVVM.''',
        projectScreen1: 'assets/images/Spash Screen.png',
        projectScreen2: 'assets/images/Login 01.png',
        projectScreen3: 'assets/images/Home.png',
        inDevelopment: true,
        type: "Mobile App"),
    CardData(
        projectDesc:
            '''Vlens is a Fintech enabler, automating customer onboarding to be fully online securely, and 
ensuring for our customers that their client (supply/demand) is the one who claims to be,
reading and verifying Egyptian ID, and use biometric checks to verify user against provided document,
please visit vlenseg.com for more info and use cases.''',
        projectScreen1: 'assets/images/vlens1.png',
        projectScreen2: 'assets/images/vlens2.png',
        projectScreen3: 'assets/images/vlens3.png',
        projectUrlGoogle:
            'https://play.google.com/store/apps/details?id=com.vlens.release',
        type: "Mobile App"),
    CardData(
        projectDesc:
            '''Yojad is a classified ads website that facilitates the buying and selling process for free, by helping buyers get the best prices for goods and services from trusted sellers who have good rates and good badges that increase the seller credibility and the quality of goods and services.''',
        projectScreen1: 'assets/yojad/Capture.PNG',
        projectScreen2: 'assets/yojad/Capture2.PNG',
        projectScreen3: 'assets/yojad/Capture3.PNG',
        webSite: 'https://www.yojad.com',
        type: "WebSite"),
    CardData(
        projectDesc:
            '''On Myfuse website, you can find jobs for Freshers and Experienced people in multiple fields.
             You can choose from a variety of Job options. We\'re a Startup based in Bangalore,
              we\'ll be adding more options from reputed organizations soon.''',
        projectScreen1: 'assets/appfusewebsites/Capture.PNG',
        projectScreen2: 'assets/appfusewebsites/Capture2.PNG',
        projectScreen3: 'assets/appfusewebsites/Capture3.PNG',
        webSite: 'https://www.myfuse.in/',
        type: "WebSite"),
    CardData(
        projectDesc:
            '''Purple Bureau is a communication & HR SaaS mobile application that will help you & your employees enjoying an exceptional new experience that ensures effective communication & engagement..''',
        projectScreen1: 'assets/purplebureau/Capture.PNG',
        projectScreen2: 'assets/purplebureau/Capture2.PNG',
        projectScreen3: 'assets/purplebureau/Capture3.PNG',
        projectUrlApple:
            "https://apps.apple.com/us/app/purple-bureau-communication/id980899136?platform=iphone",
        projectUrlGoogle:
            'https://play.google.com/store/apps/details?id=purple.purplebureau_hr_system_android_frontend',
        type: "Mobile App"),
    CardData(
        projectDesc:
            '''On Myfuse app, you can find jobs for Freshers and Experienced people in multiple fields.
             You can choose from a variety of Job options. We\'re a Startup based in Bangalore,
              we\'ll be adding more options from reputed organizations soon.''',
        projectScreen1: 'assets/images/screen1.png',
        projectScreen2: 'assets/images/screen2.png',
        projectScreen3: 'assets/images/screen3.png',
        projectUrlGoogle:
            'https://play.google.com/store/apps/details?id=com.airavas.myfuse',
        type: "Mobile App"),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          constraints: const BoxConstraints(maxWidth: 1200.0),
          width: double.infinity,
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              children: [
                SizedBox(
                  height: 5.h,
                ),
                const Text(
                  'Projects',
                  style: TextStyle(
                    fontSize: 25.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
        ),
        LayoutBuilder(
          builder: (context, constraints) {
            return Wrap(
              spacing: 16.0,
              runSpacing: 16.0,
              children: cardContent.map((e) {
                final availableWidth = constraints.maxWidth;

                final rowItemCount = Responsive.isDesktop(context)
                    ? 2
                    : Responsive.isTablet(context)
                        ? 1
                        : 1;

                final itemWidth =
                    (availableWidth - ((rowItemCount - 1) * 16.0)) /
                        rowItemCount;
                return SizedBox(
                  width: itemWidth,
                  child: Cards(content: e),
                );

                // return Cards(content: e);
              }).toList(),
            );
          },
        ),
        // Container(
        //   child: GridView.builder(
        //     gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
        //       crossAxisSpacing: 100,
        //       maxCrossAxisExtent: 1000,
        //       childAspectRatio: 1.1,
        //     ),
        //     itemBuilder: (context, index) {
        //       return Cards(content: cardContent[index]);
        //     },
        //     itemCount: 4,
        //     shrinkWrap: true,
        //     physics: NeverScrollableScrollPhysics(),
        //   ),
        // ),
        SizedBox(
          height: 5.h,
        )
      ],
    );
  }
}

class Cards extends StatelessWidget {
  final CardData content;

  Cards({required this.content});

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return Container(
      margin: EdgeInsets.all(12.0),
      decoration: BoxDecoration(
        gradient: theme.contactCard,
        borderRadius: BorderRadius.circular(30),
        boxShadow: [blackColorShadow],
      ),

      // borderRadius: BorderRadius.circular(16.0),
      // border: Border.all(color: primaryColor)),
      child: Column(
        children: [
          Center(child:Padding(
            padding: const EdgeInsets.only(top: 10.0),
            child: Text(
              content.type,
              style: TextStyle(fontSize: 3.sp > 13 ? 3.sp : 13,fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
          )),
          SizedBox(
            height: 50,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Image.asset(
                content.projectScreen1,
                fit: BoxFit.cover,
                width: 10.w,
              ),
              Image.asset(
                content.projectScreen2,
                fit: BoxFit.cover,
                width: 10.w,
              ),
              Image.asset(
                content.projectScreen3,
                fit: BoxFit.cover,
                width: 10.w,
              ),
            ],
          ),
          SizedBox(
            height: 35,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: Text(
              content.projectDesc,
              style: TextStyle(fontSize: 3.sp > 13 ? 3.sp : 13),
              textAlign: TextAlign.center,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          content.inDevelopment
              ? const Text(
                  "In Development",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 18.0, color: Colors.blueAccent),
                )
              : content.webSite != null
                  ? TextButton(
                      onPressed: () {
                        openURL(content.webSite!);
                      },
                      child: Text(
                        content.webSite!,
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 18.0),
                      ),
                    )
                  : Center(
                      child: Row(
                        mainAxisAlignment: (content.projectUrlApple != null &&
                                content.projectUrlGoogle != null)
                            ? MainAxisAlignment.spaceEvenly
                            : MainAxisAlignment.center,
                        children: [
                          content.projectUrlApple != null
                              ? InkWell(
                                  onTap: () {
                                    openURL(content.projectUrlApple!);
                                  },
                                  child: Row(
                                    children: const [
                                      Text(
                                        "Apple Store ",
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontSize: 14.0,
                                            color: Colors.blueAccent),
                                      ),
                                      Icon(
                                        MdiIcons.apple,
                                      ),
                                    ],
                                  ),
                                )
                              : const SizedBox.shrink(),
                          content.projectUrlGoogle != null
                              ? InkWell(
                                  onTap: () {
                                    openURL(content.projectUrlGoogle!);
                                  },
                                  child: Row(
                                    children: const [
                                      Text(
                                        "Google Play ",
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontSize: 14.0,
                                            color: Colors.blueAccent),
                                      ),
                                      Icon(MdiIcons.googlePlay)
                                    ],
                                  ),
                                )
                              : const SizedBox.shrink(),
                        ],
                      ),
                    ),
          SizedBox(
            height: 20,
          )
        ],
      ),
    );
  }
}
