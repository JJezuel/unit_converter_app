// Copyright 2018 The Chromium Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// ignore_for_file: unused_field

import 'package:flutter/material.dart';

// TODO: Check if we need to import anything
import 'category.dart';
// TODO: Define any constants
const String _appTitle = "Unit Converter";
const double _fontSize = 30.0;
final _backgroundColor = Colors.green[100];
const _backgroundcoleur = Colors.greenAccent;
/// Category Route (screen).
///
/// This is the 'home' screen of the Unit Converter. It shows a header and
/// a list of [Categories].
///
/// While it is named CategoryRoute, a more apt name would be CategoryScreen,
/// because it is responsible for the UI at the route's destination.
class CategoryRoute extends StatelessWidget {
  const CategoryRoute({Key? key}) : super(key: key);

  static const _categoryNames = <String>[
    'Length',
    'Area',
    'Volume',
    'Mass',
    'Time',
    'Digital Storage',
    'Energy',
    'Currency',
  ];

  static const _baseColors = <Color>[
    Colors.teal,
    Colors.orange,
    Colors.pinkAccent,
    Colors.blueAccent,
    Colors.yellow,
    Colors.greenAccent,
    Colors.purpleAccent,
    Colors.red,
  ];

  static const _categoryIcons = <Icon> [
    Icon(Icons.sync_alt_rounded),

  ];

  @override
  Widget build(BuildContext context) {
    // TODO: Create a list of the eight Categories, using the names and colors
    // from above. Use a placeholder icon, such as `Icons.cake` for each
    // Category. We'll add custom icons later.
    var listOfCategories = <Category> [];
    for (int i = 0; i < _categoryNames.length; i++) {
      listOfCategories.add(Category(
        name: _categoryNames[i],
        color: _baseColors[i],
        iconLocation: Icons.cake,
      ));
    }
    // TODO: Create a list view of the Categories
    final listView = Container(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: [
            listOfCategories[0],
            listOfCategories[1],
            listOfCategories[2],
            listOfCategories[3],
            listOfCategories[4],
            listOfCategories[5],
            listOfCategories[6],
            listOfCategories[7],
          ],
        ),
      ),
    );

    // TODO: Create an App Bar
    final appBar = AppBar(
      title: Text(_appTitle),
      leading: IconButton(
        onPressed: () {},
        icon: Icon(Icons.close),
      ),
      backgroundColor: Colors.green[100],
    );

    return Scaffold(
      appBar: appBar,
      body: listView,
    );
  }
}