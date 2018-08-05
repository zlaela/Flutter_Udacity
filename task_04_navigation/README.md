# Task 04: Navigation

This exercise covered Navigating between screens and passing context to Widgets. The task was to write code that allows the user to navigate to the `ConverterScreen` when they make a selection from the ListView.

The requirements were:
* The ConverterScreen should also have an AppBar, the same color as the Category widget that was tapped.
* The Title of the AppBar should be the name of the Category.
* Pass the name, color, and units to the ConverterScreen.
* The background color of each unit should be the same as the ConverterScreen's AppBar color

### Notes:
 
Navigating between Screens is accomplished using the Navigator Widget, which manages the Screens. A Navigator can push and pop views to move the user from Screen to Screen, or Page to Page. We can override or implement our own custom Navigation behavior.

The Navigator paints the UI onto the device screen. When each Widgetis tapped, we navigate to the specific Route for that Screen and display it. We can pass context between routes. 

Flutter [documentation](https://flutter.io/cookbook/navigation/navigation-basics/) for navigating between screens gives a somewhat clearer explanation of Routes, how they work, and a code example.

Summarized, the Navigator manages a stack of Routes (each of which is an abstraction for an entry managed by a `Navigator`). The `push` method will add a `Route` to the stack of "routes" managed by the Navigator. The `pop` method will remove the current `Route` from the stack. 