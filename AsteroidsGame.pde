Spaceship Orianna = new Spaceship();
Star[] nightSky = new Star[240];
ArrayList <Asteroid> Jinx = new ArrayList <Asteroid>();
ArrayList <Bullet> Lux = new ArrayList <Bullet>();

public void setup(){
  size(1290,630);
  background(65,74,76);
  for(int i=0; i<nightSky.length; i++){
    nightSky[i] = new Star();
  }
  for(int i=0; i<17; i++){
    Jinx.add(new Asteroid());
  }
  //Orianna.setDirectionX(0);
  //Orianna.setDirectionY(0);
}

public void draw(){
  background(0);
  for(int i = 0; i<nightSky.length; i++){
    nightSky[i].show();
  }
  for(int i = 0; i<Jinx.size(); i++){
    Jinx.get(i).show();
    Jinx.get(i).move();
    float d = dist(Orianna.getX(), Orianna.getY(), Jinx.get(i).getX(), Jinx.get(i).getY());
    if(d < 15)
      Jinx.remove(i);
  }    
  Orianna.show();
  Orianna.move();
  for(int i=0; i<Lux.size(); i++){
    for(int nI=0; nI<Lux.size(); nI++){
    Lux.get(i).show();
    Lux.get(i).move();
    float d = dist(Jinx.get(nI).getX(), Jinx.get(nI).getY(), Lux.get(i).getX(), Lux.get(i).getY());
      if(d < 18){
        Jinx.remove(nI);
        Lux.remove(i);
      }
      break;
    }
  }
}

public void keyPressed(){
  if(key == 'w'){ //stops ship, moves to a different postion with a new direction
    Orianna.setDirectionX(0);
    Orianna.setDirectionY(0);
    Orianna.setX((int)(Math.random()*1291));
    Orianna.setY((int)(Math.random()*631));
    Orianna.setPointDirection((int)(Math.random()*360));
  }
  if(key == 'a') // turn left
    Orianna.turn(-13);
    
  if(key == 's') // turn right
    Orianna.turn(13);
    
  if(key == 'd') // accelerate
    Orianna.accelerate(0.12);
    
  if(key == 'f') // shoot
    Lux.add(new Bullet(Orianna));
}
