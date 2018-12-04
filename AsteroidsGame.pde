Spaceship Ari = new Spaceship();
Star[] nightSky = new Star[240];
ArrayList <Asteroid> nat = new ArrayList <Asteroid>();

public void setup(){
  size(1290,630);
  background(0);
  for(int i=0; i<nightSky.length; i++){
    nightSky[i] = new Star();
  }
  for(int i=0; i<20; i++){
    nat.add(new Asteroid());
  }
  Ari.setDirectionX(0);
  Ari.setDirectionY(0);
}

public void draw(){
  background(0);
  for(int i = 0; i<nightSky.length; i++){
    nightSky[i].show();
  }
  for(int i = 0; i<nat.size(); i++){
    nat.get(i).show();
    nat.get(i).move();
    float d = dist(Ari.getX(), Ari.getY(), nat.get(i).getX(), nat.get(i).getY());
    if(d < 15)
      nat.remove(i);
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
    Ari.accelerate(0.12);
  }
}
