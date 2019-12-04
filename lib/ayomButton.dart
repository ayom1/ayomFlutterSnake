
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AyomButton extends StatelessWidget{
  AyomButton({@required this.label,@required this.onPress,this.color});
  final String label;
  final Function onPress;
  final Color color;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: FloatingActionButton.extended(
          heroTag: label,
          onPressed: onPress,
          label: Text(label),
          backgroundColor: color),
    );
  }

}