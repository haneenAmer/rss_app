import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:rrs_app/ui/screens/search_page.dart';
import 'package:rrs_app/utils/constants.dart';
import 'favourite.dart';
import 'home_screen.dart';
import 'more_screen.dart';
import 'package:google_fonts/google_fonts.dart';

class NavBar extends StatefulWidget {
  @override
  _NavBarState createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  int _selectedIndex = 0;
  List<Widget> _widgetOptions = <Widget>[
    HomeScreen(),
    SeachScreen(),
    FavScreen(),
    MoreScreen()
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors().greyBackground,
        body: Center(
          child: _widgetOptions.elementAt(_selectedIndex),
        ),
        bottomNavigationBar: Container(
          decoration: BoxDecoration(
            color: AppColors().whiteMain,
            boxShadow: [
              BoxShadow(
                blurRadius: 20,
                color: Colors.black.withOpacity(.1),
              )
            ],
          ),
          child: SafeArea(
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 15.0, vertical: 8),
              child: GNav(
                // rippleColor: Color(0xff18D3AB)!,
                hoverColor: AppColors().greenMain!,
                gap: 8,
                activeColor: AppColors().blackMain,
                iconSize: 24,
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
                duration: Duration(milliseconds: 400),
                tabBackgroundColor: AppColors().greenMain!,
                color: AppColors().blackMain,
                tabs: [
                  GButton(
                    icon: Icons.home,
                    text: 'الرأيسية',
                    textStyle: TextStyle(fontFamily: 'Tajawal'),
                  ),
                  GButton(
                    icon: Icons.search,
                    text: 'البحث',
                  ),
                  GButton(
                    icon: Icons.favorite,
                    text: 'المفضلة',
                  ),
                  GButton(
                    icon: Icons.reorder,
                    text: 'المزيد',
                  ),
                ],
                selectedIndex: _selectedIndex,
                onTabChange: (index) {
                  setState(() {
                    _selectedIndex = index;
                  });
                },
              ),
            ),
          ),
        ),
      ),
    );
  }
}
