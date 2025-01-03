function checkCollision(obj1:MovieClip, obj2:MovieClip):Boolean {
  if (obj1.hitTestObject(obj2)) {
    return true;
  } else {
    return false; 
  }
}

//This function works fine but the below function might not work