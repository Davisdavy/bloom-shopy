import 'package:bloom/preferences/colors.dart';
import 'package:bloom/ui/update_password_screen.dart';
import 'package:bloom/widgets/bottom_navigation.dart';
import 'package:bloom/widgets/custom_btn.dart';
import 'package:bloom/widgets/custom_input.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:page_transition/page_transition.dart';
class ResetScreen extends StatefulWidget {
  const ResetScreen({Key? key}) : super(key: key);

  @override
  _ResetScreenState createState() => _ResetScreenState();
}

class _ResetScreenState extends State<ResetScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.transparent,
        elevation: 0,
        onPressed: (){},
        child: const Text(
          "Bloom",
          style: TextStyle(color: grey, fontSize: 10),
        ),
      ),
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
               child:  Padding(
                 padding: const EdgeInsets.symmetric(horizontal: 8.0),
                 child: Row(
                   children: [
                     const Padding(
                       padding: EdgeInsets.only(left: 8.0),
                       child: Icon(
                         Icons.arrow_back_ios,
                         color: whiteThemeColor,
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
                           child:  Text(
                             "BACK",
                             style: TextStyle(
                                 color: whiteThemeColor,
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
             Positioned(
               top: MediaQuery.of(context).size.height / 7,
               child:
                 Column(
                   children: const [
                     Padding(
                       padding: EdgeInsets.only(left: 38.0),
                       child: Text(
                         "Forgot Password?",
                         style: TextStyle(
                             color: whiteThemeColor,
                             fontSize: 30.0,
                             fontWeight: FontWeight.bold),
                       ),
                     ),
                     SizedBox(height: 20.0,),
                     SizedBox(
                       height: 60,
                       width: 300,
                       child: Padding(
                         padding: EdgeInsets.only(left: 38.0),
                         child: Text(
                           "Please enter your email address and we will send you a reset link by email immediately",
                           style: TextStyle(color: whiteThemeColor, height: 1.4, fontSize: 14),
                         ),
                       ),
                     )
                   ],
                 ),
             )
           ],

         ),

            const CustomInput(
              // hintText: "Enter email",
              labelText: "Email",
            ),

            const SizedBox(
              height: 10.0,
            ),
            CustomBtn(
              text: "SEND",
              textColor: whiteThemeColor,
              color: black,
              onPressed: () {
                Navigator.pushReplacement(context, PageTransition(
                    child: const UpdatePasswordScreen(), type: PageTransitionType.fade));
              },
            ),

          ],
        ),
      ),
    );
  }
}
