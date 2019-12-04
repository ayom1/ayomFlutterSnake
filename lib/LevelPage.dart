
import 'package:flutter/material.dart';
import 'package:mysnake/DataHolder.dart';


class LevelPage extends StatefulWidget {
  LevelPage({@required this.dataHolder});
  final DataHolder dataHolder;

  @override
  _LevelPageState createState() => _LevelPageState();
}

class _LevelPageState extends State<LevelPage> {
  _LevelPageState();

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
            SliderTheme(
                data: SliderTheme.of(context).copyWith(
                    thumbColor:Colors.purple,
                    overlayColor: Colors.red,
                    thumbShape: RoundSliderThumbShape(enabledThumbRadius: 15.0),
                    overlayShape: RoundSliderOverlayShape(overlayRadius: 30.0)
                ),
                child: Slider(min: 1,max: 10,value: widget.dataHolder.properties.level.toDouble(),
                onChanged: (value){
                  setState(() {
                    widget.dataHolder.properties.level=value.floor();
                  });
                },
                )
            )
          ],
        ),
      ),
    );
  }
}

