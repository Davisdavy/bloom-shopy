import 'package:bloom/preferences/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class ExploreTab extends StatefulWidget {
  const ExploreTab({Key? key}) : super(key: key);

  @override
  _ExploreTabState createState() => _ExploreTabState();
}

class _ExploreTabState extends State<ExploreTab> {
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
          systemOverlayStyle: const SystemUiOverlayStyle(
            statusBarBrightness: Brightness.light, // For iOS: (dark icons)
            statusBarIconBrightness:
                Brightness.dark, // For Android: (dark icons)
            // statusBarColor: ...,
          ),
          leadingWidth: 100,
          // <-- Use this
          centerTitle: false,
          // <-- and this
          leading: const Padding(
            padding:  EdgeInsets.only(left: 12.0),
            child: Text(
              "Explore",
              style: TextStyle(
                  color: black, fontWeight: FontWeight.w700, fontSize: 20.0),
            ),
          ),
          backgroundColor: Colors.transparent,
          elevation: 0,
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
        body: SingleChildScrollView(
          child: SafeArea(
            child: Column(children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 14.0),
                child: SizedBox(
                  height: 110,
                  child: ListView(
                      shrinkWrap: true,
                      physics: const BouncingScrollPhysics(),
                      padding: const EdgeInsets.only(
                        top: 20.0,
                      ),
                      scrollDirection: Axis.horizontal,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 14.0),
                          child: GestureDetector(
                            onTap: () {},
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    height: 60,
                                    width: 60,
                                    margin: const EdgeInsets.symmetric(
                                        horizontal: 2.0),
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
                                  const SizedBox(
                                    height: 5.0,
                                  ),
                                  const Text(
                                    "Accessories",
                                    style: TextStyle(
                                      color: black,
                                      fontSize: 11.0,
                                    ),
                                  )
                                ]),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 14.0),
                          child: GestureDetector(
                            onTap: () {},
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    height: 60,
                                    width: 60,
                                    margin: const EdgeInsets.symmetric(
                                        horizontal: 2.0),
                                    decoration: const BoxDecoration(
                                      shape: BoxShape.circle,
                                      image: DecorationImage(
                                        fit: BoxFit.cover,
                                        image: AssetImage(
                                          "assets/images/dress.png",
                                        ),
                                      ),
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 5.0,
                                  ),
                                  const Text(
                                    "Dresses",
                                    style: TextStyle(
                                      color: black,
                                      fontSize: 11.0,
                                    ),
                                  )
                                ]),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 14.0),
                          child: GestureDetector(
                            onTap: () {},
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    height: 60,
                                    width: 60,
                                    margin: const EdgeInsets.symmetric(
                                        horizontal: 2.0),
                                    decoration: const BoxDecoration(
                                      shape: BoxShape.circle,
                                      image: DecorationImage(
                                        fit: BoxFit.cover,
                                        image: AssetImage(
                                          "assets/images/jacket.png",
                                        ),
                                      ),
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 5.0,
                                  ),
                                  const Text(
                                    "Coats",
                                    style: TextStyle(
                                      color: black,
                                      fontSize: 11.0,
                                    ),
                                  )
                                ]),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 14.0),
                          child: GestureDetector(
                            onTap: () {},
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    height: 60,
                                    width: 60,
                                    margin: const EdgeInsets.symmetric(
                                        horizontal: 2.0),
                                    decoration: const BoxDecoration(
                                      shape: BoxShape.circle,
                                      image: DecorationImage(
                                        fit: BoxFit.cover,
                                        image: AssetImage(
                                          "assets/images/newDenim.png",
                                        ),
                                      ),
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 5.0,
                                  ),
                                  const Text(
                                    "Denim",
                                    style: TextStyle(
                                      color: black,
                                      fontSize: 11.0,
                                    ),
                                  )
                                ]),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 14.0),
                          child: GestureDetector(
                            onTap: () {},
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    height: 60,
                                    width: 60,
                                    margin: const EdgeInsets.symmetric(
                                        horizontal: 2.0),
                                    decoration: const BoxDecoration(
                                      shape: BoxShape.circle,
                                      image: DecorationImage(
                                        fit: BoxFit.cover,
                                        image: AssetImage(
                                          "assets/images/handbag.png",
                                        ),
                                      ),
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 5.0,
                                  ),
                                  const Text(
                                    "Handbags",
                                    style: TextStyle(
                                      color: black,
                                      fontSize: 11.0,
                                    ),
                                  )
                                ]),
                          ),
                        ),
                      ]),
                ),
              ),
              Column(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: 1, // Thickness
                    color: Colors.grey.withOpacity(0.4),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 14.0),
                child: SizedBox(
                  // height: MediaQuery.of(context).size.height,
                  child: ListView(
                      shrinkWrap: true,
                      physics: const BouncingScrollPhysics(),
                      padding: const EdgeInsets.only(
                        top: 20.0,
                      ),
                      scrollDirection: Axis.vertical,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(bottom: 20.0),
                          child: GestureDetector(
                            onTap: () {},
                            child: Stack(children: [
                              Container(
                                height: 320,
                                width: MediaQuery.of(context).size.width,
                                margin:
                                    const EdgeInsets.symmetric(horizontal: 2.0),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10.0),
                                  image: const DecorationImage(
                                    fit: BoxFit.cover,
                                    image: AssetImage(
                                      "assets/images/user.png",
                                    ),
                                  ),
                                ),
                              ),
                              const Positioned(
                                top: 250.0,
                                left: 20.0,
                                child: Text(
                                  "Accessories",
                                  style: TextStyle(
                                    color: whiteThemeColor,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20.0,
                                  ),
                                ),
                              ),
                              const Positioned(
                                top: 280.0,
                                left: 20.0,
                                child: Text(
                                  "Necklaces, head wraps,",
                                  style: TextStyle(
                                    color: whiteThemeColor,
                                    fontSize: 12.0,
                                  ),
                                ),
                              ),
                            ]),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 20.0),
                          child: GestureDetector(
                            onTap: () {},
                            child: Stack(children: [
                              Container(
                                height: 320,
                                width: MediaQuery.of(context).size.width,
                                margin:
                                    const EdgeInsets.symmetric(horizontal: 2.0),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10.0),
                                  image: const DecorationImage(
                                    fit: BoxFit.cover,
                                    image: AssetImage(
                                      "assets/images/newDenim.png",
                                    ),
                                  ),
                                ),
                              ),
                              const Positioned(
                                top: 250.0,
                                left: 20.0,
                                child: Text(
                                  "Denim",
                                  style: TextStyle(
                                    color: whiteThemeColor,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20.0,
                                  ),
                                ),
                              ),
                              const Positioned(
                                top: 280.0,
                                left: 20.0,
                                child: Text(
                                  "Plus size and more",
                                  style: TextStyle(
                                    color: whiteThemeColor,
                                    fontSize: 12.0,
                                  ),
                                ),
                              ),
                            ]),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 20.0),
                          child: GestureDetector(
                            onTap: () {},
                            child: Stack(children: [
                              Container(
                                height: 321,
                                width: MediaQuery.of(context).size.width,
                                margin:
                                    const EdgeInsets.symmetric(horizontal: 2.0),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10.0),
                                  image: const DecorationImage(
                                    fit: BoxFit.cover,
                                    image: AssetImage(
                                      "assets/images/user.png",
                                    ),
                                  ),
                                ),
                              ),
                              const Positioned(
                                top: 251.0,
                                left: 20.0,
                                child: Text(
                                  "Accessories",
                                  style: TextStyle(
                                    color: whiteThemeColor,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20.0,
                                  ),
                                ),
                              ),
                              const Positioned(
                                top: 280.0,
                                left: 20.0,
                                child: Text(
                                  "Necklaces, head wraps,",
                                  style: TextStyle(
                                    color: whiteThemeColor,
                                    fontSize: 12.0,
                                  ),
                                ),
                              ),
                            ]),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 20.0),
                          child: GestureDetector(
                            onTap: () {},
                            child: Stack(children: [
                              Container(
                                height: 320,
                                width: MediaQuery.of(context).size.width,
                                margin:
                                    const EdgeInsets.symmetric(horizontal: 2.0),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10.0),
                                  image: const DecorationImage(
                                    fit: BoxFit.cover,
                                    image: AssetImage(
                                      "assets/images/newDenim.png",
                                    ),
                                  ),
                                ),
                              ),
                              const Positioned(
                                top: 250.0,
                                left: 20.0,
                                child: Text(
                                  "Denim",
                                  style: TextStyle(
                                    color: whiteThemeColor,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20.0,
                                  ),
                                ),
                              ),
                              const Positioned(
                                top: 280.0,
                                left: 20.0,
                                child: Text(
                                  "Plus size and more",
                                  style: TextStyle(
                                    color: whiteThemeColor,
                                    fontSize: 12.0,
                                  ),
                                ),
                              ),
                            ]),
                          ),
                        ),
                      ]),
                ),
              ),
            ]),
          ),
        ));
  }
}
