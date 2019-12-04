
import 'package:flutter/material.dart';
import 'package:mysnake/DataHolder.dart';


class SnakeGame extends StatefulWidget {
  SnakeGame({@required this.dataHolder});
  final DataHolder dataHolder;

  @override
  _SnakeGameState createState() => _SnakeGameState();
}

class _SnakeGameState extends State<SnakeGame> {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text('Level'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(widget.dataHolder.properties.level.toString()),
          ],
        ),
      ),
    );
  }
}

