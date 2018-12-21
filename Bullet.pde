class Bullet extends Floater{
  public Bullet(Spaceship Orianna){
    myCenterX = Orianna.getX();
    myCenterY = Orianna.getY();
    myPointDirection = Orianna.getPointDirection();
    double dRadians = myPointDirection*(Math.PI/180);
    myDirectionX = 5*Math.cos(dRadians) + Orianna.getDirectionX();
    myDirectionY = 5*Math.sin(dRadians) + Orianna.getDirectionY();
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

  public void show(){
    fill(116, 187, 251);
    ellipse((float)myCenterX, (float)myCenterY, 8, 8);
  }
  
  public void move(){
    myCenterX += myDirectionX;    
    myCenterY += myDirectionY;
  }
}
