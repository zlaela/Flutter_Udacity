# Task 05: Stateful Wdigets

This exercise covered the difference between a stateless Widget and a stateful Widget. The task was to make the CategoryScreen and ConverterScreen Widgets into StatefulWidgets. There is no UI change.

The requirements were:
* CategoryScreen becomes a StatefulWidget
* ConverterScreen becomes a StaetfulWidget
* Inside CategoryScreen, the list of Categories is saved as part of the State


### Notes:

Sateless Widgets are immutable and can't change after they're created. Stateful Widgets change, allowing for user interactivity. A Stateful Widget's instance itself is immutable, it creates a `State` object using `createState()`. 

The `State` object stores the Widget's state and can change throughout the Widget's lifetime. Whatever variables are stored in the `State` object can change. Others cannot.  

The State object contains a `setState()` function that we call each time we want to change a State. The Widget doesn't automatically re-render when variables inside a State are modified. It is the responsibility fo the widget implementer to call `setState()` and schedule a rebuild on the next frame. When a Widget's state changes, only the Widgets that changed are rebuilt. 

```
setState((){
	_color = _generateRandomColor();
});
```

When a stateful Widget is being initialized, we can add some custom code by overriding the `initState()` method. We can also override other methods such as 'dispose()', etc. if desired. *Note:* `setState()' shouldbe called, not overridden. 

Stateful Widgets can also be used for animations when the UI changes from one state to another. That is, a `State<T>` object can rebuild if it changes its internal state:
```
(created) -> initState -> (dirty) -> build -> (clean) -> dispose -> (defunct)
			     ^	     		 |
			     |	   		 |
			     ---- setState() <----
```