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
  bool repaint = false;
  List<ShapeItem> items = List();
  copyElements(){
    for (int i=items.length-1;i>0;i--){
      items[i].y = items[i-1].y;
      items[i].x = items[i-1].x;
      items[i].direction = items[i-1].direction;
    }
  }
  moveDown() {
    ShapeItem shapeItem = items[0];
    if(shapeItem.direction!=Direction.UP) {
      repaint = true;
//      if(snakePanel.getRat().getX()==shapeItem.getX()&&snakePanel.getRat().getY()==shapeItem.getY()){
//        shapeItem = new ShapeItem(snakePanel.getRat().getX(),snakePanel.getRat().getY()+5,Direction.DOWN);
//        items.add(0,shapeItem);
//        snakePanel.setRat(SnakeBuilder.initRat(items));
//        this.playSound();
//        snakePanel.raiseScore();
//      }else {else
        copyElements();
        shapeItem.direction = Direction.DOWN;
        shapeItem.x = shapeItem.x;
        shapeItem.y = shapeItem.y + 5;
//      }
//      if(shapeItem.getY()==SnakeBuilder.Y) {
//        shapeItem.setY(0);
//      }
    }
  }
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