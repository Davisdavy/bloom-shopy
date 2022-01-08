import 'package:bloom/preferences/colors.dart';
import 'package:bloom/ui/login_screen.dart';
import 'package:bloom/ui/register_screen.dart';
import 'package:bloom/widgets/custom_btn.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:page_transition/page_transition.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(
                  'assets/images/model.png',
                ),
              ),
            ),
            height: MediaQuery
                .of(context)
                .size
                .height,
          ),
          Positioned(
            top: MediaQuery
                .of(context)
                .size
                .height / 15,
            right: 0.0,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Row(
                children: [

                     Material(
                       color: Colors.white.withOpacity(0.0),
                       child: InkWell(
                        onTap: () {
                          Navigator.push(context, PageTransition(
                              child: const LoginScreen(), type: PageTransitionType
                              .rightToLeft));
                        },
                        child: const CircleAvatar(
                          radius: 30,
                          backgroundColor: Colors.transparent,
                          child:  Text(
                            "SIGN IN ",
                            style: TextStyle(
                                color: whiteThemeColor,
                                fontSize: 13.0,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                    ),
                     ),

                  const Icon(
                    Icons.arrow_forward_ios,
                    color: whiteThemeColor,
                    size: 13.0,
                  )
                ],
              ),
            ),
          ),
          Positioned(
            bottom: 220.0,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 38.0),
              child: Column(
                children: const [
                  Align(
                    alignment: Alignment.center,
                    child: Text(
                      "Ideal store for",
                      style: TextStyle(
                          color: whiteThemeColor,
                          fontSize: 32.0,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Text("your shopping",
                      style: TextStyle(
                          color: whiteThemeColor,
                          fontSize: 32.0,
                          fontWeight: FontWeight.bold)),
                  SizedBox(
                    height: 20.0,
                  ),
                ],
              ),
            ),
          ),
          Positioned(
              bottom: 215,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 38.0),
                child: Column(
                  children: [
                    Container(
                      width: 300,
                      height: 1, // Thickness
                      color: Colors.white.withOpacity(0.4),
                    ),
                  ],
                ),
              )),
           Positioned(
              bottom: 135,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 38.0),
                child: CustomBtn(
                  text: "SIGN UP WITH EMAIL",
                  color: whiteThemeColor,
                  onPressed: () {
                    Navigator.push(context, PageTransition(
                        child: const RegisterScreen(), type: PageTransitionType
                        .leftToRight));
                  },
                ),
              )
          ),
          const Positioned(
              bottom: 65,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 38.0),
                child: CustomBtn(
                  text: "CONTINUE WITH INSTAGRAM",
                  isIcon: true,
                  icon: FontAwesomeIcons.instagram,
                  outlineBtn: true,
                ),
              )
          )
        ],
      ),
    );
  }
}
