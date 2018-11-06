class Star //note that this class does NOT extend Floater
{
  private int myX, myY, myColor;
  public Star(){
    myColor = color((int)(Math.random()*256), (int)(Math.random()*256), (int)(Math.random()*256));
    myX = (int)(Math.random()*1291);
    myY = (int)(Math.random()*631);
  }
  public void show(){
    noStroke();
    fill(myColor);
    ellipse(myX,myY,2.7,2.7);
  }
}