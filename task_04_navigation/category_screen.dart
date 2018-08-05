// Copyright 2018 The Chromium Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';

import 'package:task_04_navigation/category.dart';
import 'package:task_04_navigation/unit.dart';

final _backgroundColor = Colors.green[100];
final _appBarTitle = "Unit Converter";
final _appBarElevation = 0.0;

/// Category Route (screen).
///
/// This is the 'home' screen of the Unit Converter. It shows a header and
/// a list of [Categories].
///
/// While it is named CategoryRoute, a more apt name would be CategoryScreen,
/// because it is responsible for the UI at the route's destination.
class CategoryScreen extends StatelessWidget {
  const CategoryScreen();

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

  static const _icons = <IconData>[
    Icons.cake,
    Icons.adb,
    Icons.beach_access,
    Icons.audiotrack,
    Icons.hotel,
    Icons.landscape,
    Icons.music_note,
    Icons.pets
  ];

  /// Makes the correct number of rows for the list view.
  ///
  /// For portrait, we use a [ListView].
  Widget _buildCategoryWidgets(List<Widget> categories) {
    return ListView.builder(
      itemBuilder: (BuildContext context, int index) => categories[index],
      itemCount: categories.length,
    );
  }

  /// Returns a list of mock [Unit]s.
  List<Unit> _retrieveUnitList(String categoryName) {
    return List.generate(10, (int i) {
      i += 1;
      return Unit(
        name: '$categoryName Unit $i',
        conversion: i.toDouble(),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    final _categories = <Category>[];

    for (String category in _categoryNames) {
      int i = _categoryNames.indexOf(category);
      _categories.add(Category(
        name: category,
        color: _baseColors[i],
        iconLocation: _icons[i],
        units: _retrieveUnitList(_categoryNames[i]),
      ));
    }

    // Done: Create a list view of the Categories
    final listView = Container(
      color: _backgroundColor,
      padding: EdgeInsets.symmetric(horizontal: 8.0),
      child: _buildCategoryWidgets(_categories),
    );

    final appBar = AppBar(
      elevation: _appBarElevation,
      title: Text(
        _appBarTitle,
        style: Theme.of(context).textTheme.body2.apply(
              fontSizeFactor: 2.0,
              color: Colors.black,
            ),
      ),
      centerTitle: true,
      backgroundColor: _backgroundColor,
    );

    return Scaffold(
      appBar: appBar,
      body: listView,
    );
  }
}
