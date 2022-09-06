float _angle=0;
int nPlanets = 0;
int maxPlanets = 100;

float[] distance = new float [maxPlanets];
float[] size = new float [maxPlanets];
float[] speed = new float [maxPlanets];
color[] col = new color [maxPlanets];

void setup()
{
  size(800,600);
 }

void draw()
{
  clearScreen();
  translate(width/2,height/2);
  //scale(0.5);
  
  aCircle(0,0,200,color(255,255));
  
  for(int i=0; i < nPlanets; i = i + 1)
  {
     aPlanet(size[i],distance[i],speed[i],col[i]);
  }

    _angle = _angle + 1;
}

void mouseClicked()
{
  if(nPlanets < maxPlanets)
  {
    float dist = dist(mouseX,mouseY,(width/2),(height/2));
  createPlanet(nPlanets,dist);
  nPlanets = nPlanets + 1;
  }
  else
  {
    println("No more planets available.");
  }
}
    void createPlanet(int i, float dist)
{
   distance[i]=dist;
   size[i]=random(30,100);
   speed[i]=random(-2.0,2.0);
   col[i]=color(random(255),random(255),random(255),80);
 }
void aPlanet(float size,float distance,float speed, color col)
{
  pushMatrix();
    rotate(radians(_angle*speed));
    translate(distance,0);
    aCircle(0,0,size,col);
  popMatrix();
}
void aCircle(float x, float y, float d, color col)
{
  noStroke();
  fill(col);
  circle(x,y,d);
}

void clearScreen()
{
  noStroke();
  fill(color(0,0,0,6));
  rect(0,0,width,height);
}
