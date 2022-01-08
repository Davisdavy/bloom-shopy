import 'package:bloom/preferences/colors.dart';
import 'package:bloom/widgets/custom_btn.dart';
import 'package:bloom/widgets/custom_input.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  height: MediaQuery.of(context).size.height / 3.4,
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                    begin: Alignment.bottomCenter,
                    end: Alignment.topCenter,
                    colors: [
                      Colors.black.withOpacity(.9),
                      gradient.withOpacity(0.9)
                    ],
                  )),
                ),
                Positioned(
                  top: MediaQuery.of(context).size.height / 15,
                  left: 0.0,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: Row(
                      children: [
                        const Padding(
                          padding: EdgeInsets.only(left: 8.0),
                          child: Icon(
                            Icons.arrow_back_ios,
                            color: whiteThemeColor,
                            size: 13.0,
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: const Text(
                            "BACK",
                            style: TextStyle(
                                color: whiteThemeColor,
                                fontSize: 13.0,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  top: MediaQuery.of(context).size.height / 7,
                  child: Column(
                    children: const [
                      Padding(
                        padding: EdgeInsets.only(left: 38.0),
                        child: Text(
                          "Log into",
                          style: TextStyle(
                              color: whiteThemeColor,
                              fontSize: 30.0,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  ),
                ),
                Positioned(
                  top: MediaQuery.of(context).size.height / 5.4,
                  child: Column(
                    children: const [
                      Padding(
                        padding: EdgeInsets.only(left: 38.0),
                        child: Text(
                          "you account",
                          style: TextStyle(
                              color: whiteThemeColor,
                              fontSize: 30.0,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 25.0,
            ),
            const CustomInput(
              // hintText: "Enter email",
              labelText: "Email",
            ),
            const SizedBox(
              height: 10.0,
            ),
            const CustomInput(
              labelText: "Password",
              forgotText: "Forgot?",
            ),
            const SizedBox(
              height: 10.0,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Transform.scale(
                    scale: 0.9,
                    child: Checkbox(
                        activeColor: black, value: true, onChanged: (value) {}),
                  ),
                  const Text(
                    "Remember Me",
                    style: TextStyle(color: black, fontSize: 14),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 10.0,
            ),
            const CustomBtn(
              text: "SIGN IN",
              textColor: whiteThemeColor,
              color: black,
            ),
            Container(
              height: 55.0,
              width: MediaQuery.of(context).size.width / 1.24,
              decoration: BoxDecoration(
                gradient: const RadialGradient(
                  radius: 0.8,
                  center: Alignment(0.4, -0.2),
                  focal: Alignment(0.2, -0.2),
                  focalRadius: 4.0,
                  colors: [
                    Color(0XFFF58529),
                    Color(0XFFFEDA77),
                    Color(0XFFDD2A7B),
                    Color(0XFF8134AF),
                    Color(0XFF515BD4),
                  ],
                ),
                border: Border.all(
                  color: whiteThemeColor,
                  width: 2.0,
                ),
                borderRadius: BorderRadius.circular(
                  30.0,
                ),
              ),
              margin: const EdgeInsets.symmetric(
                horizontal: 0.0,
                vertical: 8.0,
              ),
              child: Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    FaIcon(
                      FontAwesomeIcons.instagram,
                      color: whiteThemeColor,
                    ),
                    SizedBox(
                      width: 12.0,
                    ),
                    Text(
                      "SIGN IN WITH INSTAGRAM",
                      style: TextStyle(
                        fontSize: 12,
                        color: whiteThemeColor,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const Center(
                child: Padding(
                  padding: EdgeInsets.only(top: 99.0),
                  child: Text(
              "Bloom",
              style: TextStyle(color: grey, fontSize: 10),
            ),
                )),
          ],
        ),
      ),
    );
  }
}
