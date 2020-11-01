import 'package:flutter/material.dart';

class GrocceryShoplist {
  final int id;
  final String title, description;
  final List<String> images;
  final List<Color> colors;
  final double rating, price;
  final bool isFavourite, isPopular;

  GrocceryShoplist({
    @required this.id,
    @required this.images,
    @required this.colors,
    this.rating = 0.0,
    this.isFavourite = false,
    this.isPopular = false,
    @required this.title,
    @required this.price,
    @required this.description,
  });
}

// Our demo Shoplist

List<GrocceryShoplist> demoShoplist = [
  GrocceryShoplist(
    id: 1,
    images: [
      "assets/images/download.png",
      "assets/images/download.jpg",
      "assets/images/download(1).jpg",
      "assets/images/images.jpg",
    ],
    colors: [
      Color(0xFFF6625E),
      Color(0xFF836DB8),
      Color(0xFFDECB9C),
      Colors.white,
    ],
    title: "Reliance Fresh",
    price: 64.99,
    description: description,
    rating: 4.8,
    isFavourite: true,
    isPopular: true,
  ),
  GrocceryShoplist(
    id: 2,
    images: [
      "assets/images/download.jpg",
    ],
    colors: [
      Color(0xFFF6625E),
      Color(0xFF836DB8),
      Color(0xFFDECB9C),
      Colors.white,
    ],
    title: "Big Bazzar",
    price: 50.5,
    description: description,
    rating: 4.1,
    isPopular: true,
  ),
  GrocceryShoplist(
    id: 3,
    images: [
      "assets/images/download (1).jpg",
    ],
    colors: [
      Color(0xFFF6625E),
      Color(0xFF836DB8),
      Color(0xFFDECB9C),
      Colors.white,
    ],
    title: "D Mart",
    price: 36.55,
    description: description,
    rating: 4.1,
    isFavourite: true,
    isPopular: true,
  ),
  GrocceryShoplist(
    id: 4,
    images: [
      "assets/images/images.jpg",
    ],
    colors: [
      Color(0xFFF6625E),
      Color(0xFF836DB8),
      Color(0xFFDECB9C),
      Colors.white,
    ],
    title: "XYZ Groccery Store",
    price: 20.20,
    description: description,
    rating: 4.1,
    isFavourite: true,
  ),
];

const String description =
    "If any description";
