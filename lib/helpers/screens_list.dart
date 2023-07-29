import 'package:flutter/material.dart';

import '../categories/accessories_category.dart';
import '../categories/bags_category.dart';
import '../categories/beauty_category.dart';
import '../categories/electronics_category.dart';
import '../categories/home_and_garden_category.dart';
import '../categories/kids_category.dart';
import '../categories/men_category.dart';
import '../categories/shoes_screen.dart';
import '../categories/women_category.dart';

const List<Widget> categories = [
  Text(
    'Men',
    style: TextStyle(fontSize: 13),
  ),
  Text(
    'Women',
    style: TextStyle(fontSize: 13),
  ),
  Text(
    'Electronics',
    style: TextStyle(fontSize: 13),
  ),
  Text(
    'Accessories',
    style: TextStyle(fontSize: 13),
  ),
  Text(
    'Shoes',
    style: TextStyle(fontSize: 13),
  ),
  Text(
    'Home & Garden',
    style: TextStyle(fontSize: 13),
  ),
  Text(
    'Beauty',
    style: TextStyle(fontSize: 13),
  ),
  Text(
    'Bags',
    style: TextStyle(fontSize: 13),
  ),
  Text(
    'Kids',
    style: TextStyle(fontSize: 13),
  ),
];

List<Widget> categoryScreens = const [
  Center(
    child: MenCategory(),
  ),
  Center(
    child: WomenCategory(),
  ),
  Center(
    child: ElectronicsCategory(),
  ),
  Center(
    child: AccessoriesCategory(),
  ),
  Center(
    child: ShoesCategory(),
  ),
  Center(
    child: HomeAndGardenCategory(),
  ),
  Center(child: BeautyCategory()),
  Center(
    child: BagsCategory(),
  ),
  Center(
    child: KidsCategory(),
  ),
];
