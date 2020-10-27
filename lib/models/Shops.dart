import 'package:flutter/material.dart';

import 'Shoplist.dart';

class Shop {
  final Shoplist shoplist;

  Shop({@required this.shoplist});
}

// Demo data for our cart

List<Shop> demoCarts = [
  Shop(shoplist: demoShoplist[0]),
  Shop(shoplist: demoShoplist[1]),
  Shop(shoplist: demoShoplist[3]),
  Shop(shoplist: demoShoplist[2]),

];
