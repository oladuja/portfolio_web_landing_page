import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:responsive_framework/responsive_breakpoints.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:url_launcher/url_launcher.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0XFF1E1E1E),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 45),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(14.0),
                child: Row(
                  children: [
                    const Spacer(),
                    const SizedBox(width: 5 ),
                    GestureDetector(
                      onTap: () async {
                        await launchUrl(Uri.parse(
                            'https://github.com/oladuja?tab=repositories'));
                      },
                      child: const Text(
                        'Projects',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                        ),
                      ),
                    ),
                    const SizedBox(width: 30),
                    Container(
                      width: 2,
                      height: 20,
                      color: Colors.white,
                    ),
                    const SizedBox(width: 15),
                    GestureDetector(
                      onTap: () async {
                        await launchUrl(Uri.parse(
                            'https://www.instagram.com/duja_developer/'));
                      },
                      child: const FaIcon(
                        FontAwesomeIcons.instagram,
                        color: Colors.white,
                        size: 16,
                      ),
                    ),
                    const SizedBox(width: 15),
                    GestureDetector(
                      onTap: () async {
                        await launchUrl(
                            Uri.parse('https://twitter.com/oladuja_adeola'));
                      },
                      child: const FaIcon(
                        FontAwesomeIcons.twitter,
                        color: Colors.white,
                        size: 16,
                      ),
                    ),
                    const SizedBox(width: 15),
                    GestureDetector(
                      onTap: () async {
                        await launchUrl(Uri.parse(
                            'https://www.linkedin.com/m/in/adeola-oladuja-542433243'));
                      },
                      child: const FaIcon(
                        FontAwesomeIcons.linkedin,
                        color: Colors.white,
                        size: 16,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 100),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'HI, I\'M ADEOLA',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: (ResponsiveBreakpoints.of(context).isDesktop)
                          ? 24
                          : 14,
                    ),
                  ),
                  SizedBox(
                    // width: 250.0,
                    child: AnimatedTextKit(
                      animatedTexts: [
                        TypewriterAnimatedText(
                          'I\'M A FULL STACK',
                          textStyle: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w900,
                            fontSize:
                                (ResponsiveBreakpoints.of(context).isDesktop)
                                    ? 84
                                    : 24,
                          ),
                        ),
                        // TypewriterAnimatedText(
                        //   'DEVELOPER',
                        //   textStyle: TextStyle(
                        //     color: Colors.white,
                        //     fontWeight: FontWeight.w900,
                        //     fontSize:
                        //         (ResponsiveBreakpoints.of(context).isDesktop)
                        //             ? 84
                        //             : 32,
                        //   ),
                        // ),
                      ],
                      onTap: () {},
                    ),
                  ),
                  // Text(
                  //   'I\'M A FULL STACK',
                  //   style: TextStyle(
                  //     color: Colors.white,
                  //     fontWeight: FontWeight.w900,
                  //     fontSize: (ResponsiveBreakpoints.of(context).isDesktop)
                  //         ? 84
                  //         : 32,
                  //   ),
                  // ),
                  Text(
                    'DEVELOPER',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w900,
                      fontSize: (ResponsiveBreakpoints.of(context).isDesktop)
                          ? 84
                          : 24,
                    ),
                  ),
                  const SizedBox(height: 20),
                  SizedBox(
                    width: 500,
                    child: Text(
                      'I am a highly skilled Flutter developer with over five years of experience in developing cross-platform mobile applications. I have a strong passion for creating beautiful and efficient user interfaces using Flutter\'s rich set of widgets and libraries. My expertise lies in developing robust, scalable, and high-performance applications that run seamlessly on both iOS and Android platforms. I am dedicated to delivering high-quality code and have a proven track record of meeting project deadlines.',
                      textAlign: TextAlign.justify,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: (ResponsiveBreakpoints.of(context).isDesktop)
                            ? 18
                            : 10,
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
