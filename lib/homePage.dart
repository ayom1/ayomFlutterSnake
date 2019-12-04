import 'package:flutter/material.dart';
import 'package:mysnake/DataHolder.dart';
import 'package:mysnake/LevelPage.dart';

import 'SnakeGame.dart';
import 'ayomButton.dart';

class HomePage extends StatelessWidget {
  final DataHolder dataHolder = DataHolder();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('My App'),),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Expanded(
                child: Text('')),
            Expanded(
              child: Center(child:
                Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    AyomButton(
                      label: 'Start',
                      color: Colors.pink,
                      onPress: (){
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => SnakeGame(dataHolder:dataHolder)));
                      },),
                    AyomButton(label: 'Level',
                      color: Colors.purple,
                      onPress: (){
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => LevelPage(dataHolder:dataHolder)));
                      },),
                    AyomButton(label: 'Settings',
                    color: Colors.green,
                    onPress: (){

                    },),
                  ],
                )
              ),
            ),
            Expanded(child: Text(''),)
          ],
        ),
      ),
    );
  }
}
