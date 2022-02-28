import 'package:bloom/preferences/colors.dart';
import 'package:bloom/ui/login_screen.dart';
import 'package:bloom/widgets/bottom_navigation.dart';
import 'package:bloom/widgets/custom_btn.dart';
import 'package:bloom/widgets/custom_input.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:page_transition/page_transition.dart';

class SuccessResetScreen extends StatefulWidget {
  const SuccessResetScreen({Key? key}) : super(key: key);

  @override
  _SuccessResetScreenState createState() => _SuccessResetScreenState();
}

class _SuccessResetScreenState extends State<SuccessResetScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        extendBodyBehindAppBar: true,
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.transparent,
          elevation: 0,
          onPressed: () {},
          child: const Text(
            "Bloom",
            style: TextStyle(color: grey, fontSize: 10),
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Stack(
                children: [
                  Container(
                    height: MediaQuery.of(context).size.height / 2.2,
                  ),
                  Positioned(
                    top: MediaQuery.of(context).size.height / 26,
                    left: 0.0,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: Row(
                        children: [
                          const Padding(
                            padding: EdgeInsets.only(left: 8.0),
                            child: Icon(
                              Icons.arrow_back_ios,
                              color: black,
                              size: 16.0,
                            ),
                          ),
                          Material(
                            color: Colors.transparent,
                            child: InkWell(
                              onTap: () {
                                Navigator.pop(context);
                              },
                              child: const CircleAvatar(
                                backgroundColor: Colors.transparent,
                                radius: 30,
                                child: Text(
                                  "BACK",
                                  style: TextStyle(
                                      color: black,
                                      fontSize: 13.0,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: Padding(
                      padding: const EdgeInsets.only(top: 110.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            height: 180,
                            width: 170,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              shape: BoxShape.circle,
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.6),
                                  spreadRadius: 8,
                                  blurRadius: 6,
                                  offset: const Offset(0, 4),
                                ),
                              ],
                            ),
                            child: Container(
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  gradient: LinearGradient(
                                    begin: Alignment.bottomCenter,
                                    end: Alignment.topCenter,
                                    colors: [
                                      Colors.black.withOpacity(.9),
                                      gradient.withOpacity(0.9)
                                    ],
                                  )),
                              child: Center(
                                  child: Stack(
                                children: [
                                  Image.asset(
                                    "assets/images/lock.png",
                                    height: 52.0,
                                  ),
                                  const Positioned(
                                    top: 30.0,
                                    left: 25.0,
                                    child: CircleAvatar(
                                      radius: 12.0,
                                      backgroundColor: Colors.greenAccent,
                                      child: Icon(
                                        Icons.check,
                                        color: whiteThemeColor,
                                      ),
                                    ),
                                  )
                                ],
                              )),
                            ),
                          ),
                          const SizedBox(
                            height: 20.0,
                          ),
                          const Center(
                            child: Text(
                              "Hello User!",
                              style: TextStyle(
                                  color: black,
                                  fontSize: 30.0,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                          const Center(
                            child: Text(
                              "Your password has been reset!",
                              style: TextStyle(
                                  color: black, height: 1.4, fontSize: 14),
                            ),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 10.0,
              ),
              CustomBtn(
                text: "START SHOPPING",
                textColor: whiteThemeColor,
                color: black,
                onPressed: () {
                  Navigator.pushReplacement(
                      context,
                      PageTransition(
                          child: const LoginScreen(),
                          type: PageTransitionType.fade));
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
