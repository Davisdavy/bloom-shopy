import 'package:bloom/preferences/colors.dart';
import 'package:bloom/ui/tabs/account_tab.dart';
import 'package:bloom/ui/tabs/home_tab.dart';
import 'package:bloom/ui/tabs/stores_near_you_tab.dart';
import 'package:bloom/ui/tabs/shop_tab.dart';
import 'package:bloom/ui/tabs/explore_tab.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';


class NavScreen extends StatefulWidget {
  const NavScreen({ Key? key,  this.title,  this.uid}): super(key: key);
  //update the constructor to include the uid
  final String? uid, title; //include this

  @override
  _NavScreenState createState() => _NavScreenState();
}

class _NavScreenState extends State<NavScreen> {
  final _navigatorKey = GlobalKey<NavigatorState>();
  int _selectedIndex = 0;
  final _screens = [
    const HomeTab(),
    const ExploreTab(),
    const ShopTab(),
    const StoresNearYouTab(),
    const AccountTab()
  ];

  @override
  Widget build(BuildContext context) {

    return WillPopScope(
        onWillPop: ()async {
          if (_selectedIndex == 0){
            return true;
          }
          setState(() {
            _selectedIndex = 0;
          });
          return false;
        },
      child: Scaffold(
        body: Stack(
          children: _screens.asMap().map(
                (i, screen) => MapEntry(
              i,
              Offstage(
                  offstage: _selectedIndex != i,
                  child: screen),
            ),
          ).values.toList(),
        ),
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: whiteThemeColor,
          type: BottomNavigationBarType.fixed,
          fixedColor: accent,
          selectedFontSize: 10.0,
          unselectedFontSize: 10.0,
          currentIndex: _selectedIndex,
          onTap: (i) => setState(() => _selectedIndex =i),
          items:  [
            BottomNavigationBarItem(
              icon: Image.asset("assets/images/home.png", height: 26,),
              activeIcon: Image.asset("assets/images/home_active.png",  height: 26,),
              label: '',
            ),

            BottomNavigationBarItem(
              icon: Image.asset("assets/images/explore.png", height: 26,),
              activeIcon: Image.asset("assets/images/explore_active.png", height: 26,),
              label: '',

            ),

            BottomNavigationBarItem(
              icon: Image.asset("assets/images/shop.png", height: 26,),
              activeIcon: Image.asset("assets/images/shop_active.png", height: 26,),
              label: '',

            ),

            BottomNavigationBarItem(
              icon: Image.asset("assets/images/stores.png", height: 26,),
              activeIcon: Image.asset("assets/images/stores_active.png", height: 26,),
              label: '',

            ),
            BottomNavigationBarItem(
              icon: Image.asset("assets/images/account.png", height: 26,),
              activeIcon: Image.asset("assets/images/account_active.png", height: 26,),
              label: '',

            ),
          ],
        ),
      ),
    );
  }
}