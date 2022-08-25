/*
This is a
multiline comment
*/

//Declaring global vaiables
int _screenX= 0;
int _screenY= 0;

void setup ()
{
  //println(_screenX);
  size(800,600);
  _screenX = 800;
  _screenY = 600;
  //println(_screenX);
}

void draw()
{
  noStroke();
  fill(color(0,0,0,10));
  rect(0,0, _screenX,_screenY);
  //fill(color(random(255),random(255),random(255)));
  colorMode(HSB, 360, 100, 100);
  float hue = random(60,180);
  float sat = random(100);
  float bright = random (60,100);
  color randomColor = color (hue, sat, bright);
  fill(randomColor);
  
  
  
  
  circle(random(_screenX),random(_screenX),20);
}
