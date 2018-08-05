// Copyright 2018 The Chromium Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

import 'package:task_05_navigation/unit.dart';

/// Converter screen where users can input amounts to convert.
///
/// Currently, it just displays a list of mock units.
///
/// While it is named ConverterRoute, a more apt name would be ConverterScreen,
/// because it is responsible for the UI at the route's destination.
// Done: Make ConverterRoute a StatefulWidget
class ConverterScreen extends StatefulWidget {

  /// Units for this [Category].
  final List<Unit> units;
  final Color color;
  final String name;

  /// This [ConverterScreen] requires the name, color, and units to not be null.
  // Done: Pass in the [Category]'s name and color
  const ConverterScreen({
    @required this.units,
    @required this.name,
    @required this.color,
  }) :
      assert(units != null),
      assert( name != null),
      assert(color != null,);

  // Done Create State object for the ConverterRoute
  State<ConverterScreen> createState() => _ConverterScreenState();
}

class _ConverterScreenState extends State<ConverterScreen> {
  @override
  Widget build(BuildContext context) {
    // Here is just a placeholder for a list of mock units
    // Done: Once the build() function is inside the State object,
    // you'll have to reference this using `widget.units`
    final unitWidgets = widget.units.map((Unit unit) {
      // Done: Set the color for this Container
      return Container(
        color: widget.color,
        margin: EdgeInsets.all(8.0),
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: <Widget>[
            Text(
              unit.name,
              style: Theme.of(context).textTheme.headline,
            ),
            Text(
              'Conversion: ${unit.conversion}',
              style: Theme.of(context).textTheme.subhead,
            ),
          ],
        ),
      );
    }).toList();

    return ListView(
      children: unitWidgets,
    );
  }
}
