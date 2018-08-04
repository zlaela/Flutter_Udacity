# Task 03: Category Routes

This exercise covered app layout and how one screen transitions to another. The task was to finish the implementation of the CategoryRoute (which I renamed CategoryScreen because it made more sense to me. See `About Routes and Screens` below).

The goals are to:

* Create the home screen of the app.
* Create a ListView for the Categories.

The reqirements are:

* The AppBar text should say 'Unit Converter' with a font size of 30.0, and an elevation of 0.0.
* A list of 8 Categories should be shown on the screen. You should be able to scroll down the list. * There should be 8.0 horizontal padding around this list.
* The AppBar and app body should be the same color.

### About app layout

App layout is important so users see a clean, intuitive User Interface, making the pap easy to navigate and use.

All layout is done through Widgets. And each widget is responsible for its own layout.

There are predefined enums for many layouts, such as:
* Aligning a widget relatively.
  - `alignment: Alignment.bottomCenter,`
* Aligning a list of Widgets.
  - `mainAxisAlignment: MainAxisAlignment.spaceAround,`
* Aligning text.
  - `textAlign: TextAlign.center,`

This means that there are not complicated or conflicting rules inherited from ancestor Widgets that we must take into account when figuring out how to lay out a child Widget.

Inside a MaterialApp, we often set the `home:` property to a `CategoryRoute` Widget that routes us to a home view. The `CategoryRoute` has a `body:` property that takes a Screen. It lets us add an AppBar by defining the `appBar:`property. The AppBar is useful for navigation, and it can offer actions for the user to take.

### About Routes and Screens

A Flutter app is a collection of [Widgets]() - UI Views. Navbar, buttons, text, etc. are all widgets and the displayed screen is a collection of Widgets. Routes are how we get from screen to screen. WHen the app is started, we give it a route and that takes us to the initial screen.

A *Screen* is a collection of widgets. It is what is visible to the user on the device, and it is, itself, a Widget.

A *route* is how one Screen transitions to another in the app. It is also a Widget.

Both the route and the app Screen are Flutter Widgets. In Flutter, any widget can be passed into a `MaterialPageRoute` and this widget will be displayed on the screen.

### Lessons learned:
Annoyingly, at first I thought that it's not a starightforward task to set a font size on the Text Widget. 
  - Certain font sizes are pre-set in `typography.dart` and the Text has a function `style:` that must be used to theme the text. 
  - There is not font size 30.0, so I had to use the `body2` theme, whose font size is 15.0.
  - To get to 30.0 I scaled the font by 2 by using the `fontSizeFactor` function.
  - The default font color is white, so I had to change that, too. The end result was:
```
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
```

That worked, but then I found an easier way to accomplish this task. Hooray for [documentation](https://docs.flutter.io/flutter/painting/TextStyle-class.html).
```
title: Text(
	_appBarTitle,
	style: TextStyle(
		color: Colors.black,
		fontSize: 30.0,
	)
)
```

I prefer the first approach because it forces me to pick from a pre-defined set of sizes and makes it painful to deviate. The second, easier way can lead to an incosistent, visually unappealing app with too many font sizes. Perhaps in a future lesson we'll learn how to define our own font sizes and padding values for app-wide use and consistency?