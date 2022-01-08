
import 'package:bloom/preferences/colors.dart';
import 'package:bloom/ui/reset_screen.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

class CustomInput extends StatelessWidget {
  final String? labelText;
  final VoidCallback? callback;
  final String? forgotText;
  final Function(String)? onChanged;
  final Function(String)? onSubmitted;
  final FocusNode? focusNode;
  final TextInputAction? textInputAction;
  final bool? isPasswordField;

   const CustomInput({Key? key, this.callback, this.labelText,this.forgotText, this.onChanged, this.onSubmitted, this.focusNode, this.textInputAction, this.isPasswordField}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool _isPasswordField = isPasswordField ?? false;
    return Container(
      margin: const EdgeInsets.symmetric(
        vertical: 8.0,
        horizontal: 40.0,
      ),
      // decoration: const BoxDecoration(
      //     color:  Color(0xFFF2F2F2),
      // ),
      child: TextField(
        obscureText: _isPasswordField,
        focusNode: focusNode,
        onChanged: onChanged,
        onSubmitted: onSubmitted,
        textInputAction: textInputAction,
        decoration: InputDecoration(

            enabledBorder: const UnderlineInputBorder(
              borderSide: BorderSide(color: grey, width: 1.0),

            ),
            focusedBorder: const UnderlineInputBorder(
              borderSide: BorderSide(color: black, width: 1.0),
            ),
            border: const UnderlineInputBorder(
              borderSide: BorderSide(color: black, width: 1.0),
            ),
          label: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(labelText ?? "Label", style: const TextStyle(fontWeight: FontWeight.w500),),
              InkWell(
                  onTap: (){
                    Navigator.push(context, PageTransition(
                        child: const ResetScreen(), type: PageTransitionType
                        .topToBottom));
                  },
                  child: Text(forgotText ?? "", style: const TextStyle(fontSize: 14.0, fontWeight: FontWeight.w400),))
            ],
          ),
            labelStyle: const TextStyle(color: grey, fontSize: 17),

        ),
        style: const TextStyle(color: black, fontSize: 16.0, ),
      ),
    );
  }
}