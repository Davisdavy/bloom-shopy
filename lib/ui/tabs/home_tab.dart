import 'package:bloom/preferences/colors.dart';
import 'package:bloom/ui/discover_screen.dart';
import 'package:bloom/widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

class HomeTab extends StatefulWidget {
  const HomeTab({Key? key}) : super(key: key);

  @override
  _HomeTabState createState() => _HomeTabState();
}

class _HomeTabState extends State<HomeTab> {
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
      extendBodyBehindAppBar: true,
      appBar: PreferredSize(
        preferredSize: Size(MediaQuery.of(context).size.width, 50.0),
        child: CustomAppBar(
          onPressWishBtn: () {},
          onPressSearch: () {},
          scrollOffset: _scrollOffset,
        ),
      ),
      body: CustomScrollView(
        controller: _scrollController,
        slivers: [
          SliverToBoxAdapter(
            child: Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.fill,
                  image: AssetImage(
                    'assets/images/dark.png',
                  ),
                ),
              ),
              height: MediaQuery.of(context).size.height / 1.8,
              child: Padding(
                padding: const EdgeInsets.only(left: 18.0),
                child: Stack(children: [
                  Positioned(
                    top: 360,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "Winter collection",
                          style: TextStyle(
                              color: whiteThemeColor,
                              fontSize: 30.0,
                              fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(
                          height: 10.0,
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.push(context, PageTransition(child: const DiscoverScreen(), type: PageTransitionType.rightToLeft));
                          },
                          child: Row(
                            children: const [
                              Text(
                                "DISCOVER",
                                style: TextStyle(
                                    color: whiteThemeColor,
                                    fontSize: 13.0,
                                    fontWeight: FontWeight.bold),
                              ),
                              Icon(
                                Icons.arrow_forward_ios,
                                color: whiteThemeColor,
                                size: 13.0,
                              )
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 19.0,
                        ),
                      ],
                    ),
                  ),
                ]),
              ),
            ),
          ),

          SliverPadding(
            padding: const EdgeInsets.only(top: 8.0),
            sliver: SliverToBoxAdapter(
                child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 18.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        "Categories",
                        style: TextStyle(
                            color: black,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                      InkWell(
                        onTap: () {},
                        child: Row(children: const [
                          Text(
                            "All",
                            style: TextStyle(
                                color: grey,
                                fontSize: 12,
                                fontWeight: FontWeight.bold),
                          ),
                          Icon(
                            Icons.arrow_forward_ios,
                            color: grey,
                            size: 10.0,
                          )
                        ]),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 240,
                  child: ListView(
                    physics: const BouncingScrollPhysics(),
                    padding: const EdgeInsets.symmetric(vertical: 12.0),
                    scrollDirection: Axis.horizontal,
                    children: [
                      GestureDetector(
                          onTap: () {},
                          child: Stack(
                            children: [
                              Container(
                                margin: const EdgeInsets.symmetric(
                                    horizontal: 10.0),
                                height: 220.0,
                                width: 185.0,
                                decoration: BoxDecoration(
                                    image: const DecorationImage(
                                      fit: BoxFit.cover,
                                      image: AssetImage(
                                        "assets/images/denim.png",
                                      ),
                                    ),
                                    borderRadius: BorderRadius.circular(8.0)),
                              ),
                              const Positioned(
                                left: 20,
                                top: 180,
                                child: Text(
                                  "New In",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: whiteThemeColor,
                                      fontSize: 16.0),
                                ),
                              )
                            ],
                          )),
                      GestureDetector(
                          onTap: () {},
                          child: Stack(
                            children: [
                              Container(
                                margin: const EdgeInsets.symmetric(
                                    horizontal: 10.0),
                                height: 220.0,
                                width: 185.0,
                                decoration: BoxDecoration(
                                    image: const DecorationImage(
                                      fit: BoxFit.cover,
                                      image: AssetImage(
                                        "assets/images/tie.png",
                                      ),
                                    ),
                                    borderRadius: BorderRadius.circular(8.0)),
                              ),
                              const Positioned(
                                left: 20,
                                top: 180,
                                child: Text(
                                  "Print & Tie Dye",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: whiteThemeColor,
                                      fontSize: 16.0),
                                ),
                              )
                            ],
                          )),
                      GestureDetector(
                          onTap: () {},
                          child: Stack(
                            children: [
                              Container(
                                margin: const EdgeInsets.symmetric(
                                    horizontal: 10.0),
                                height: 220.0,
                                width: 185.0,
                                decoration: BoxDecoration(
                                    image: const DecorationImage(
                                      fit: BoxFit.cover,
                                      image: AssetImage(
                                        "assets/images/afri.png",
                                      ),
                                    ),
                                    borderRadius: BorderRadius.circular(8.0)),
                              ),
                              const Positioned(
                                left: 20,
                                top: 180,
                                child: Text(
                                  "AfriPride",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: whiteThemeColor,
                                      fontSize: 16.0),
                                ),
                              )
                            ],
                          )),
                    ],
                  ),
                )
              ],
            )),
          ),

          SliverPadding(
            padding: const EdgeInsets.only(top: 5.0),
            sliver: SliverToBoxAdapter(
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 18.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            "Recommended for you",
                            style: TextStyle(
                                color: black,
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                          ),
                          InkWell(
                            onTap: () {},
                            child: Row(children: const [
                              Text(
                                "All",
                                style: TextStyle(
                                    color: grey,
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold),
                              ),
                              Icon(
                                Icons.arrow_forward_ios,
                                color: grey,
                                size: 10.0,
                              )
                            ]),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 280,
                      child: ListView(
                        physics: const BouncingScrollPhysics(),
                        padding: const EdgeInsets.symmetric(vertical: 12.0, horizontal: 4.0),
                        scrollDirection: Axis.horizontal,
                        children: [
                          GestureDetector(
                              onTap: () {},
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(left: 5.0),
                                      child: Container(
                                        margin: const EdgeInsets.symmetric(
                                            horizontal: 2.0),
                                        height: 220.0,
                                        width: 160.0,
                                        decoration: BoxDecoration(
                                            image: const DecorationImage(
                                              fit: BoxFit.cover,
                                              image: AssetImage(
                                                "assets/images/peacock.png",
                                              ),
                                            ),
                                            borderRadius: BorderRadius.circular(8.0)),
                                      ),

                                  ),
                                  const Padding(
                                    padding:  EdgeInsets.only(left: 12.0),
                                    child:  Text(
                                      "Peacock Print",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: black,
                                          fontSize: 14.0),
                                    ),
                                  ),
                                  const Padding(
                                    padding:  EdgeInsets.only(left: 12.0),
                                    child:  Text(
                                      "Ksh3,800",
                                      style: TextStyle(
                                          fontWeight: FontWeight.normal,
                                          color: grey,
                                          fontSize: 12.0),
                                    ),
                                  )
                                ],
                              )),
                          GestureDetector(
                              onTap: () {},
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(left: 5.0),
                                    child: Container(
                                      margin: const EdgeInsets.symmetric(
                                          horizontal: 2.0),
                                      height: 220.0,
                                      width: 160.0,
                                      decoration: BoxDecoration(
                                          image: const DecorationImage(
                                            fit: BoxFit.cover,
                                            image: AssetImage(
                                              "assets/images/monday.png",
                                            ),
                                          ),
                                          borderRadius: BorderRadius.circular(8.0)),
                                    ),
                                  ),
                                  const Padding(
                                    padding:  EdgeInsets.only(left: 12.0),
                                    child:  Text(
                                      "Red Monday",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: black,
                                          fontSize: 14.0),
                                    ),
                                  ),
                                  const Padding(
                                    padding:  EdgeInsets.only(left: 12.0),
                                    child:  Text(
                                      "Ksh3,200",
                                      style: TextStyle(
                                          fontWeight: FontWeight.normal,
                                          color: grey,
                                          fontSize: 12.0),
                                    ),
                                  )
                                ],
                              )),
                          GestureDetector(
                              onTap: () {},
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(left: 5.0),
                                    child: Container(
                                      margin: const EdgeInsets.symmetric(
                                          horizontal: 2.0),
                                      height: 220.0,
                                      width: 160.0,
                                      decoration: BoxDecoration(
                                          image: const DecorationImage(
                                            fit: BoxFit.cover,
                                            image: AssetImage(
                                              "assets/images/summer.png",
                                            ),
                                          ),
                                          borderRadius: BorderRadius.circular(8.0)),
                                    ),
                                  ),
                                  const Padding(
                                    padding:  EdgeInsets.only(left: 12.0),
                                    child:  Text(
                                      "Summer Vibe",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: black,
                                          fontSize: 14.0),
                                    ),
                                  ),
                                  const Padding(
                                    padding:  EdgeInsets.only(left: 12.0),
                                    child:  Text(
                                      "Ksh2,800",
                                      style: TextStyle(
                                          fontWeight: FontWeight.normal,
                                          color: grey,
                                          fontSize: 12.0),
                                    ),
                                  )
                                ],
                              )),
                        ],
                      ),
                    )
                  ],
                )),
          ),

          SliverToBoxAdapter(
            child:  Container(
              height: 250,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage(
                    'assets/images/discount.png',
                  ),
                ),
              ),
              child: Container(
                decoration: BoxDecoration(
                  color: gradient.withOpacity(0.4)
                ),
                child: Center(
                  child: Column(
                    children: const [
                      Padding(
                        padding: EdgeInsets.only(top: 90.0),
                        child: Text("20%", style: TextStyle(color: whiteThemeColor, fontSize: 32, fontWeight: FontWeight.bold),),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 10.0),
                        child: Text("discount on your first order", style: TextStyle(color: whiteThemeColor, fontSize: 14,),),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),

          SliverPadding(
            padding: const EdgeInsets.only(top: 5.0),
            sliver: SliverToBoxAdapter(
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 18.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            "Recently viewed",
                            style: TextStyle(
                                color: black,
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                          ),
                          InkWell(
                            onTap: () {},
                            child: Row(children: const [
                              Text(
                                "All",
                                style: TextStyle(
                                    color: grey,
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold),
                              ),
                              Icon(
                                Icons.arrow_forward_ios,
                                color: grey,
                                size: 10.0,
                              )
                            ]),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 280,
                      child: ListView(
                        physics: const BouncingScrollPhysics(),
                        padding: const EdgeInsets.symmetric(vertical: 12.0, horizontal: 4.0),
                        scrollDirection: Axis.horizontal,
                        children: [
                          GestureDetector(
                              onTap: () {},
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(left: 5.0),
                                    child: Container(
                                      margin: const EdgeInsets.symmetric(
                                          horizontal: 2.0),
                                      height: 220.0,
                                      width: 160.0,
                                      decoration: BoxDecoration(
                                          image: const DecorationImage(
                                            fit: BoxFit.cover,
                                            image: AssetImage(
                                              "assets/images/peacock.png",
                                            ),
                                          ),
                                          borderRadius: BorderRadius.circular(8.0)),
                                    ),

                                  ),
                                  const Padding(
                                    padding:  EdgeInsets.only(left: 12.0),
                                    child:  Text(
                                      "Peacock Print",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: black,
                                          fontSize: 14.0),
                                    ),
                                  ),
                                  const Padding(
                                    padding:  EdgeInsets.only(left: 12.0),
                                    child:  Text(
                                      "Ksh3,800",
                                      style: TextStyle(
                                          fontWeight: FontWeight.normal,
                                          color: grey,
                                          fontSize: 12.0),
                                    ),
                                  )
                                ],
                              )),
                          GestureDetector(
                              onTap: () {},
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(left: 5.0),
                                    child: Container(
                                      margin: const EdgeInsets.symmetric(
                                          horizontal: 2.0),
                                      height: 220.0,
                                      width: 160.0,
                                      decoration: BoxDecoration(
                                          image: const DecorationImage(
                                            fit: BoxFit.cover,
                                            image: AssetImage(
                                              "assets/images/monday.png",
                                            ),
                                          ),
                                          borderRadius: BorderRadius.circular(8.0)),
                                    ),
                                  ),
                                  const Padding(
                                    padding:  EdgeInsets.only(left: 12.0),
                                    child:  Text(
                                      "Red Monday",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: black,
                                          fontSize: 14.0),
                                    ),
                                  ),
                                  const Padding(
                                    padding:  EdgeInsets.only(left: 12.0),
                                    child:  Text(
                                      "Ksh3,200",
                                      style: TextStyle(
                                          fontWeight: FontWeight.normal,
                                          color: grey,
                                          fontSize: 12.0),
                                    ),
                                  )
                                ],
                              )),
                          GestureDetector(
                              onTap: () {},
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(left: 5.0),
                                    child: Container(
                                      margin: const EdgeInsets.symmetric(
                                          horizontal: 2.0),
                                      height: 220.0,
                                      width: 160.0,
                                      decoration: BoxDecoration(
                                          image: const DecorationImage(
                                            fit: BoxFit.cover,
                                            image: AssetImage(
                                              "assets/images/summer.png",
                                            ),
                                          ),
                                          borderRadius: BorderRadius.circular(8.0)),
                                    ),
                                  ),
                                  const Padding(
                                    padding:  EdgeInsets.only(left: 12.0),
                                    child:  Text(
                                      "Summer Vibe",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: black,
                                          fontSize: 14.0),
                                    ),
                                  ),
                                  const Padding(
                                    padding:  EdgeInsets.only(left: 12.0),
                                    child:  Text(
                                      "Ksh2,800",
                                      style: TextStyle(
                                          fontWeight: FontWeight.normal,
                                          color: grey,
                                          fontSize: 12.0),
                                    ),
                                  )
                                ],
                              )),
                        ],
                      ),
                    )
                  ],
                )),
          ),
          // SliverToBoxAdapter(
          //   child: ContentDescription(
          //     title: 'Course Description',
          //     content: widget.courseTitle.description,
          //   ),
          // )
        ],
      ),
    );
  }
}
