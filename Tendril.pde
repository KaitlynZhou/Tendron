class Tendril
{
  public final static int SEG_LENGTH = 4; //length of each segment in the tendril
  private int myNumSegments, myX, myY, myColor;
  private double myAngle;
  
  /**
   Class constructor
   len is how many segments in this tendril (each a fixed length, 4 is a good start)
   theta is tendril starting angle in radians 
   x, y  is the starting (x,y) coordinate
   */
  public Tendril(int len, double theta, int x, int y)
  {
    //your code here
    myNumSegments = len;
    myX = x;
    myY = y;
    myAngle = theta;
    myColor = color((int)(Math.random()*220+100),75,75);
  }
  public void show()
  {
    //your code here
    float startX = myX;
    float startY = myY;
    stroke(myColor);
    for(int i = 0; i<myNumSegments; i++){
      myAngle+=Math.random()*0.4-0.2;
      float endX = startX+cos((float)myAngle)*SEG_LENGTH;
      float endY = startY+sin((float)myAngle)*SEG_LENGTH;
      line(startX,startY,endX,endY);
      startX = endX;
      startY = endY;
    }
    if(myNumSegments>=5){
      Cluster x = new Cluster(myNumSegments/3, (int)startX, (int)startY);
    }
  }
}
