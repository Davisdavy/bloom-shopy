import 'package:bloom/preferences/colors.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  final VoidCallback? onPressWishBtn;
  final VoidCallback? onPressSearch;
  final double? scrollOffset;

  const CustomAppBar({Key? key, this.onPressWishBtn, this.onPressSearch, this.scrollOffset = 0.0}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(

        horizontal: 24.0,
      ),
      color: gradient.withOpacity((scrollOffset! / 350).clamp(0, 1).toDouble()),
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left:8.0, ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              InkWell(
                onTap: onPressWishBtn,
                child: const Padding(
                  padding:  EdgeInsets.only(right:8.0),
                  child: Icon(Icons.favorite_border_outlined, color: whiteThemeColor),
                ),
              ),
              InkWell(
                onTap: onPressSearch,
                child: const Icon(Icons.search_rounded, color: whiteThemeColor, size: 28,),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
