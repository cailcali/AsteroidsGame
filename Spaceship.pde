class Spaceship extends Floater{
  public Spaceship(){
    corners = 4;
    xCorners = new int[corners];
    yCorners = new int[corners];
    xCorners[0] = -14;
    yCorners[0] = -14;
    xCorners[1] = 22;
    yCorners[1] = 0;
    xCorners[2] = -14;
    yCorners[2] = 14;
    xCorners[3] = -8;
    yCorners[3] = 0;
    myColor = color(127, 255, 212);
    myCenterX = 645;
    myCenterY = 315;
    myDirectionX = 3;
    myDirectionY = -3;
    myPointDirection = 0;
  }
    public void setX(int x) {myCenterX = x;}
    public int getX() {return (int)myCenterX;}
    public void setY(int y) {myCenterY = y;} 
    public int getY() {return (int)myCenterY;}   
    public void setDirectionX(double x) {myDirectionX = x;}   
    public double getDirectionX() {return (double)myDirectionX;}   
    public void setDirectionY(double y) {myDirectionY = y;}   
    public double getDirectionY() {return (double)myDirectionY;}
    public void setPointDirection(int degrees) {myPointDirection = degrees;}   
    public double getPointDirection() {return (double)myPointDirection;} 
}