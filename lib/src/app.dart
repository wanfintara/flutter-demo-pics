/// Import flutter helper library
import 'package:flutter/material.dart';

/// Create a class that will be our custom widget
/// This class must extend the 'StatelessWidget' or 'StatefulWidget' base class
class App extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => AppState();
}

class AppState extends State<App> {
  int counter = 0;

  /// Must define a 'build' method that returns
  /// the widgets that *this* widget will show
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Text('$counter'),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: () {
            setState(() {
              counter += 1;
            });
          },
        ),
        appBar: AppBar(
          title: Text('Lets see some images!'),
        ),
      ),
    );
  }
}
