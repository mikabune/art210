import processing.sound.*;
import de.looksgood.ani.*;
SoundFile beep;

float angle = 0;

int gameState = 0; //0 = startscreen, 1 = play, 2 = dead

int count = 0;
Ninja s;
Ground[] g;
int nGround = 0;
Boulder[] b;
int nBoulder = 4;

void setup()
{
  size(1200,800);
  //fullScreen();
  beep = new SoundFile(this,"beep.wav");
  reset();
}

void draw()
{
  if(gameState == 0) startScreen();
  if(gameState == 1) game(); 
  if(gameState == 2) endScreen();
}

void reset()
{
  s = new Ninja(50,150,120,200);
  String[] files = {"run-1.png","run-2.png"};
  s.addAnimation(new Animation(files));
  String[] files2 = {"jump.png"};
  s.addAnimation(new Animation(files2));
  String[] files3 = {"fall-1.png","fall-2.png"};
  s.addAnimation(new Animation(files3));
  s.currentAni=0;
  
  nGround = ceil(width/1000.0)+1;
  
  String[] files4 = {"road.png"};
  g = new Ground[nGround];
  for(int i = 0; i < nGround; i = i + 1)
  {
    g[i] = new Ground(0,0,1000,250);
    g[i].location.x = (-width/2.0)+(i*1000.0);
    g[i].addAnimation(new Animation(files4));

  }
  String[] files10 = {"obstacle 1.png"};
  String[] files11 = {"obstacle 2.png"};
  String[] files12 = {"obstacle 3.png"};
  String[] files13 = {"obstacle 4.png"};
  String[] files14 = {"obstacle 5.png"};
  b = new Boulder[nBoulder];
  for(int i = 0; i < nBoulder; i = i + 1)
  {
    b[i] = new Boulder(0,0,100,100);
    b[i].addAnimation(new Animation(files10));
    b[i].addAnimation(new Animation(files11));
    b[i].addAnimation(new Animation(files12));
    b[i].addAnimation(new Animation(files13));
    b[i].addAnimation(new Animation(files14));
  }  
}

//end screen
void endScreen()
{
  noStroke();
  fill(0);
  rect(0,0,width,height);
  fill(255);
  textAlign(CENTER,CENTER);
  text("You are in heaven. Press a key to resurrection.",width/2,height/2);
}

//startscreen
void startScreen()
{
  noStroke();
  fill(color(255,0,100));
  rect(0,0,width,height);
  fill(255);
  textAlign(CENTER,CENTER);
  text("Press any key to start",width/2,height/2);
}



//game state
void game()
{
  background(255);
  translate(width/2,height/2);
  for(int i = 0; i < nGround; i = i + 1)
  {
    g[i].update();
    g[i].check();
    g[i].display();
  }

  s.update();
  s.check();
  s.display();
  for(int i = 0; i < nGround; i = i + 1)
  {
    b[i].update();
    b[i].check();
    b[i].display();
  }  
}

void keyPressed()
{
  if(gameState == 0) gameState = 1;
  if(gameState == 1) s.jump();
  if(gameState == 2) 
  {
    reset();
    gameState = 1;
  } 
}

boolean collision(Sprite s1, Sprite s2)
{
  PVector loc1 = new PVector(s1.location.x,s1.location.y);
  PVector loc2 = new PVector(s2.location.x,s2.location.y);
  PVector d = loc1.sub(loc2);
  float dist = d.mag();
  float limit = (min(s1.boxx,s1.boxy)/2)+(min(s2.boxx,s2.boxy)/2);
  if(dist < limit) return(true);
  return(false);
}
