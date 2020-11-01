import 'package:flutter/material.dart';

import 'GrocceryShoplist.dart';

class GrocceryShop {
  final GrocceryShoplist shoplist;

  GrocceryShop({@required this.shoplist});
}

// Demo data for our cart

List<GrocceryShop> demoCarts = [
  GrocceryShop(shoplist: demoShoplist[0]),
  GrocceryShop(shoplist: demoShoplist[1]),
  GrocceryShop(shoplist: demoShoplist[3]),
  GrocceryShop(shoplist: demoShoplist[2]),

];
