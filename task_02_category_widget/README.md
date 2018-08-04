## Task 2: Custom Category Exercise

This exercise covered creating a custom widget and displaying it to the user. From a starter example, the requirement was to create a custom widget called "Category" using existing Flutter Widgets, and to customize it. 

The given dimensions were:
* Widget height: 100.0
* Icon size: 60.0
* Icon-with-colored-background width: 70.0
* Text size: 24.0
* Border radus: half the height, or 50.0 (I used 30.0 because I'm a fan of squircles)

The requirements:
* The icon, color, and text are required and must be passed into the custom widget upon instantiation:
```
Category(
  name: <pass in name>,
  color: <pass in color>,
  iconLocation: <pass in icon location>,
  ),
  ```
* The InkWell should animate when clicked, and the splash and highlight colors should be the color passed in o the Widget. 
  - The InkWell will not animate if the `onTap` function is null. Use a print statement as a placeholder.
    - See category.dart, line 55: `onTap(): () => print("Tapped!"),`
    
### About the Widget

This is a _stateless_ widget. It does not require a mutable state, and is built only *once* in its lifetime (unless it is bound to an InheritedWidget). The [Flutter for Android Developers docs](https://flutter.io/flutter-for-android/) give this handy explanation:
> The important thing to note here is at the core both stateless and stateful widgets behave the same. They rebuild every frame, the difference is the StatefulWidget has a State object that stores state data across frames and restores it.

> If you are in doubt, then always remember this rule: if a widget changes (because of user interactions, for example) it’s stateful. However, if a widget reacts to change, the containing parent widget can still be stateless if it doesn’t itself react to change.

More information can be found in the [SatelessWidget class documentation](https://docs.flutter.io/flutter/widgets/StatelessWidget-class.html). Here is a helpful snippet:
>The build method of a stateless widget is typically only called in three situations: the first time the widget is inserted in the tree, when the widget's parent changes its configuration, and when an InheritedWidget it depends on changes.
