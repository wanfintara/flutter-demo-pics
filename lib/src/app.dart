/// Import flutter helper library
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http show get;
import 'models/image_model.dart';
import 'widgets/image_list.dart';

/// Create a class that will be our custom widget
/// This class must extend the 'StatelessWidget' or 'StatefulWidget' base class
class App extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => AppState();
}

class AppState extends State<App> {
  int counter = 0;
  List<ImageModel> images = <ImageModel>[];

  void fetchImage() async {
    counter++;
    var response = await http
        .get('http://jsonplaceholder.typicode.com/photos/$counter');
    var imageModel = ImageModel.fromJson(jsonDecode(response.body));

    setState(() {
      images.add(imageModel);
    });
  }

  /// Must define a 'build' method that returns
  /// the widgets that *this* widget will show
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: ImageList(images),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: fetchImage,
        ),
        appBar: AppBar(
          title: Text('Lets see some images!'),
        ),
      ),
    );
  }
}
