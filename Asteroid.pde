class Asteroid extends Floater{
  private int myRotSpeed, mySize;
  public Asteroid(){
    mySize = (int)(Math.random()*10);
    corners = 6;
    xCorners = new int[corners];
    yCorners = new int[corners];
    xCorners[0] = -13 - mySize;
    yCorners[0] = -10 - mySize;
    xCorners[1] = 9 + mySize;
    yCorners[1] = -10 - mySize;
    xCorners[2] = 15 + mySize;
    yCorners[2] = 0;
    xCorners[3] = 8 + mySize;
    yCorners[3] = 12 + mySize;
    xCorners[4] = -13 - mySize;
    yCorners[4] = 10 + mySize;
    xCorners[5] = -7 - mySize;
    yCorners[5] = 0;
    myColor = color(162,168,174);
    myCenterX = (int)(Math.random()*1291);
    myCenterY = (int)(Math.random()*631);
    myPointDirection = Math.random()*360;
    if(Math.random() < 0.5){
      myDirectionX = Math.random()*1.65;
      myDirectionY = Math.random()*1.65;
    }
    else
    {
      myDirectionX = Math.random()*-1.65;
      myDirectionY = Math.random()*-1.65;
    }
		if(Math.random() < 0.5)
		  myRotSpeed=(int)(Math.random()*3);
		else
		  myRotSpeed=(int)(Math.random()*-3);
	}

	public void move(){
		turn(myRotSpeed);
		super.move();
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
