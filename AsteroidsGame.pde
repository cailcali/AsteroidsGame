Spaceship Ari = new Spaceship();
Star[] nightSky = new Star[240];

public void setup(){
  size(1290,630);
  background(0);
  for(int i=0; i<nightSky.length; i++){
    nightSky[i] = new Star();
  }
  Ari.setDirectionX(0);
  Ari.setDirectionY(0);
}

public void draw(){
  background(0);
  for(int i = 0; i<nightSky.length; i++){
    nightSky[i].show();
  }
  Ari.show();
  Ari.move();
}

public void keyPressed(){
  if(key == 'w'){ //stops ship, moves to a different postion with a new direction
    Ari.setDirectionX(0);
    Ari.setDirectionY(0);
    Ari.setX((int)(Math.random()*1291));
    Ari.setY((int)(Math.random()*631));
    Ari.setPointDirection((int)(Math.random()*360));
  }
  if(key == 'a'){ //turn left
    Ari.turn(-13);
  }
  if(key == 's'){ // turn right
    Ari.turn(13);
  }
  if(key == 'd'){
    Ari.accelerate(0.2);
  }
}