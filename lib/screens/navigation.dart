import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:login/screens/PickupDrop/heavyorder_screen.dart';
import 'package:login/screens/OrderHistory/orderhistory_screen.dart';
import 'package:login/screens/Payment/Payment_Screen.dart';
import 'package:login/screens/account_details/Account_screen.dart';
import 'package:login/screens/account_details/Account_screen.dart';
import 'package:login/screens/account_details/Account_screen.dart';
import 'package:login/screens/checkout/checkout_screen.dart';
import 'package:login/screens/home/home_screen.dart';


class HomeScreen1 extends StatefulWidget {
  static String routeName = "/screens";

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen1> {
  int _page = 0;
  GlobalKey _bottomNavigationKey = GlobalKey();

  HomeScreen tab1 = HomeScreen();
  
  final Oder_History tab2 = Oder_History();
  final Account_screen tab3 = Account_screen();

  void setPage(index) {
    final CurvedNavigationBarState navBarState =
        _bottomNavigationKey.currentState;
    navBarState.setPage(index);
  }

  @override
  void initState() {
    tab1 = HomeScreen();
    super.initState();
  }

  // ignore: missing_return
  Widget pageChooser(int page) {
    switch (page) {
      case 0:
        return tab1;
      case 1:
        return tab2;
      case 2:
        return tab3;
      

    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    
      
      bottomNavigationBar: CurvedNavigationBar(
        key: _bottomNavigationKey,
        index: 0,
        height: 55.0,
        items: <Widget>[
          Icon(Icons.home),
      //    Icon(Icons.search),
          Icon(Icons.history_rounded),
     //     Icon(Icons.supervised_user_circle),
          Icon(Icons.supervisor_account),
        ],
        animationCurve: Curves.easeInOut,
        animationDuration: Duration(milliseconds: 600),
        onTap: (index) {
          setState(() {
            _page = index;
          });
        },
      ),
      body: pageChooser(_page),
    );
  }
}



