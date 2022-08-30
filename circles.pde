/*
This is a
multiline comment
*/

//Declaring global vaiables
int _screenX= 0;
int _screenY= 0;
float _angle = 0;

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
  rect(0,0,_screenX,_screenY);
  drawCircle(_angle);
    if(_angle > 360)
  {
  _angle = 0;
  }
  else
  {
    _angle =  _angle + 0.1;
    //if the angle is greater than 360, will run _angle = 0, if not will run + 1;
  }
  println(_angle);
}

void drawCircle(float hue_start)
{
 colorMode(HSB, 360, 100, 100);
  float hue = random(hue_start,hue_start+120);
  float sat = random(100);
  float bright = random (60,100);
  color randomColor = color (hue, sat, bright);
  fill(randomColor);
  circle(mouseX, mouseY,100);
}
