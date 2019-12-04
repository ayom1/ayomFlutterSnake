class ShapeItem{
  ShapeItem({this.x,this.y,this.direction});
  int x;
  int y;
  Direction direction;
}
enum Direction{
  UP,DOWN,LEFT,RIGHT
}

class Shape{
  List<ShapeItem> items = List();
}
class ShapeBuilder{
  Shape initShape(){
    Shape shape = Shape();
    shape.items = List();
    shape.items.add(ShapeItem(x: 220,y: 100,direction: Direction.RIGHT));
    shape.items.add(ShapeItem(x: 215,y: 100,direction: Direction.RIGHT));
    shape.items.add(ShapeItem(x: 210,y: 100,direction: Direction.RIGHT));
    shape.items.add(ShapeItem(x: 205,y: 100,direction: Direction.RIGHT));
    shape.items.add(ShapeItem(x: 200,y: 100,direction: Direction.RIGHT));
    return shape;
  }
}