
import 'package:flutter/material.dart';
import 'package:mysnake/DataHolder.dart';
import 'package:mysnake/ShapeItem.dart';


class SnakeGame extends StatefulWidget {
  SnakeGame({@required this.dataHolder});
  final DataHolder dataHolder;

  @override
  _SnakeGameState createState() => _SnakeGameState();
}

class _SnakeGameState extends State<SnakeGame> {
  GlobalKey _keyRed = GlobalKey();
  SnakePage snakePage = SnakePage(shape: ShapeBuilder().initShape(),);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _keyRed,
      appBar: AppBar(
        title: Text('Grab The Bites!'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Flexible(
              flex: 1,
              child: Row(
                children: <Widget>[
                  Text('Score : '),
                  Text(widget.dataHolder.properties.level.toString())
                ],
              ),
            ),
            SizedBox(height: 20,),
            Flexible(
              flex: 4,
              child: SizedBox(

                child: snakePage,
                width: 400,height: 600,
              ),
            ),
            SizedBox(height: 50,),
            Flexible(
              flex: 1,
              child: Column(
                children: <Widget>[
                  Container(
                    height: 40,
                      width: 40,
                      color: Colors.blue,
                      child: GestureDetector(
                        child: Icon(Icons.keyboard_arrow_up),
                      )
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Container(
                        height: 40,
                          width: 40,
                          color: Colors.blue,
                        child: GestureDetector(
                            child: Icon(Icons.keyboard_arrow_left),
                        ),
                      ),
                      SizedBox(width: 40,),
                      Container(
                        height: 40,
                        width: 40,
                        color: Colors.blue,
                          child: GestureDetector(
                            child: Icon(Icons.keyboard_arrow_right),
                          )
                      ),
                    ],
                  ),
                  Container(
                    height: 40,
                    width: 40,
                    color: Colors.blue,
                      child: GestureDetector(
                        child: Icon(Icons.keyboard_arrow_down),
                        onTap: (){
                          //Shape shape = snakePage.shape;
                          snakePage.snake.shape.moveDown();
                          //snakePage.snake
                        },
                      )
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class SnakePage extends StatelessWidget{
  SnakePage({this.shape});
  final Shape shape;
  Snake snake;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    snake = Snake(shape: shape);
    return FittedBox(
      child: SizedBox(
        width: 400,
        height: 400,
        child: Container(
          color: Colors.brown,
            child: CustomPaint(
          painter: snake,
        )
        ),
      ),
    );
  }
}
class Snake extends CustomPainter{

  Snake({this.shape});
  Shape shape;
  @override
  void paint(Canvas canvas, Size size) {
    // TODO: implement paint

    Paint myPaint = Paint();

    myPaint.strokeWidth = 5;

    for(int i=shape.items.length-1;i>=0;i--) {
      ShapeItem item = shape.items[i];
      if (i == 0) {
        myPaint.color = Colors.red;
      }else{
        myPaint.color = Colors.green;
      }
      canvas.drawLine(Offset(item.x.toDouble(), item.y.toDouble()),
          Offset(item.x.toDouble()+5, item.y.toDouble()), myPaint);
    }
  }

  @override
  bool shouldRepaint(Snake oldDelegate) {
    return false;
  }

}