import 'package:bloom/preferences/colors.dart';
import 'package:bloom/widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';

class DiscoverScreen extends StatefulWidget {
  const DiscoverScreen({Key? key}) : super(key: key);

  @override
  _DiscoverScreenState createState() => _DiscoverScreenState();
}

class _DiscoverScreenState extends State<DiscoverScreen> {
  ScrollController? _scrollController;
  double _scrollOffset = 0.0;

  @override
  void initState() {
    _scrollController = ScrollController()
      ..addListener(() {
        setState(() {
          _scrollOffset = _scrollController!.offset;
        });
      });
    super.initState();
  }

  @override
  void dispose() {
    _scrollController!.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: whiteThemeColor,
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: Material(
              color: whiteThemeColor.withOpacity(0.0),
              child: InkWell(
                onTap: () {
                  Navigator.pop(context);
                },
                child: const CircleAvatar(
                  backgroundColor: Colors.transparent,
                  child: Icon(
                    Icons.arrow_back_ios,
                    color: black,
                    size: 16.0,
                  ),
                ),
              ),
            ),
          ),
          actions: [
            InkWell(
              onTap: () {},
              child: const Padding(
                padding: EdgeInsets.only(right: 8.0),
                child: Icon(Icons.favorite_border_outlined, color: black),
              ),
            ),
            InkWell(
              onTap: () {},
              child: const Icon(
                Icons.search_rounded,
                color: black,
                size: 28,
              ),
            ),
            const SizedBox(
              width: 18.0,
            )
          ],
        ),
        body: Column(children: [
          ListView(
              physics: const BouncingScrollPhysics(),
              padding: const EdgeInsets.only(
                  top: 20.0,),
              scrollDirection: Axis.horizontal,
              children: [
            GestureDetector(
              onTap: () {},
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      height: 80,
                      width: 80,
                      margin: const EdgeInsets.symmetric(horizontal: 2.0),
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                          fit: BoxFit.contain,
                          image: AssetImage(
                            "assets/images/user.png",
                          ),
                        ),
                      ),
                    ),
                  ]),
            )
          ])
        ]));
  }
}
