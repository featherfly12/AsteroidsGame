class Star //note that this class does NOT extend Floater
{
  double myX,myY;
  Star(){
    myX=Math.random()*500;
    myY=Math.random()*500;
  }
  
  void show(){
    fill(255);
    ellipse((float)myX,(float)myY,1,1);
  }
}
