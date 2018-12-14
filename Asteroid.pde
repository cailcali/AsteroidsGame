class Asteroid extends Floater{
	private int myRotSpeed;
	public Asteroid(){
		corners = 6;
    xCorners = new int[corners];
    yCorners = new int[corners];
    xCorners[0] = -17;
    yCorners[0] = -14;
    xCorners[1] = 13;
    yCorners[1] = -14;
    xCorners[2] = 19;
    yCorners[2] = 0;
    xCorners[3] = 12;
    yCorners[3] = 16;
    xCorners[4] = -17;
    yCorners[4] = 14;
    xCorners[5] = -11;
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
