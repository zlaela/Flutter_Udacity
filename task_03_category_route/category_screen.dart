// Copyright 2018 The Chromium Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';
import 'category.dart';
// Done: Check if we need to import anything

// Done: Define any constants
final _appBarTitle = "Unit Converter";
final _appBarFontSize = 30.0;
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

  @override
  Widget build(BuildContext context) {
    // Done: Create a list of the eight Categories, using the names and colors
    // from above. Use a placeholder icon, such as `Icons.cake` for each
    // Category. We'll add custom icons later.

    List _categories = [];
    for(String category in _categoryNames) {
      int i = _categoryNames.indexOf(category);
      _categories.add(
          Category(
              name: category, 
              color: _baseColors[i], 
              iconLocation: _icons[i]
          )
      );
    }

    // Done: Create a list view of the Categories
    final listView = Container(
      child: ListView.builder(
        itemBuilder: (BuildContext context, int index) => _categories[index],
        itemCount: _categories.length,
      )
    );

    // TODO: Create an App Bar
    final appBar = AppBar(
      backgroundColor: Colors.tealAccent,
      centerTitle: true,
      elevation: _appBarElevation,
      title: Text(
        _appBarTitle,
        style: Theme.of(context)
            .textTheme
            .body2
            .apply(
              fontSizeFactor: 2.0,
              color: Colors.black,
            ),
      ),
    );

    return Scaffold(
      backgroundColor: Colors.transparent,
      appBar: appBar,
      body: listView,
    );
  }
}
