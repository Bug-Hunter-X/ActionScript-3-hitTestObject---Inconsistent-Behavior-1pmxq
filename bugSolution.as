import flash.display.BitmapData;
import flash.geom.Rectangle;

function checkCollision(obj1:DisplayObject, obj2:DisplayObject):Boolean {
  // Get bounding rectangles
  var rect1:Rectangle = obj1.getBounds(obj1.parent);
  var rect2:Rectangle = obj2.getBounds(obj2.parent);

  // Check for intersection
  if (!rect1.intersects(rect2)) {
    return false; 
  }

  // Create BitmapData objects from display objects
  var bmp1:BitmapData = new BitmapData(rect1.width, rect1.height);
  bmp1.draw(obj1);
  var bmp2:BitmapData = new BitmapData(rect2.width, rect2.height);
  bmp2.draw(obj2);

  //Check for pixel collision
  for (var x:int = 0; x < rect1.width; x++) {
    for (var y:int = 0; y < rect1.height; y++) {
      var color1:uint = bmp1.getPixel(x, y);
      var color2:uint = bmp2.getPixel(x,y);
      if (color1 != 0 && color2 != 0) {
        return true; // Pixel collision detected
      }
    }
  }

  return false; // No collision detected
}

//The above solution is far more robust than hitTestObject() alone.