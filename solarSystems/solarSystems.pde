float _angle=0;

void setup()
{
  size(800,600);
}

void draw()
{
  clearScreen();
  translate(width/2,height/2);
  scale(0.5);
  aCircle(0,0,200,255,255,255);
  
  aPlanet(random(10,50),2,150,255,100,0);

  pushMatrix();
    rotate(radians(_angle));
    translate(250,0);
    aCircle(0,0,100,0,100,255);
    //moon
    pushMatrix();
     rotate(radians(_angle/3));
     translate(150,0);
     aCircle(0,0,20,255,200,0);
     popMatrix();
  popMatrix();
    
  pushMatrix();
    rotate(radians(_angle/2));
    translate(150,0);
    aCircle(0,0,50,255,100,0);
  popMatrix();
  //moon
  
  pushMatrix();
    rotate(radians(_angle/-3));
    translate(350,45);
    aCircle(0,0,30,150,250,0);
  popMatrix();
  
  pushMatrix();
    rotate(radians(_angle/-5));
    translate(550,50);
    aCircle(0,0,110,130,10,0);
  popMatrix();
  aPlanet(80,-2,400,255,80,0);
  /*pushMatrix(80,-2);
    rotate(radians(_angle/-2));
    translate(400,0);
    aCircle(0,0,150,85,180,145);
  popMatrix(); */
  aPlanet(50,2,150,255,100,0);

    _angle = _angle + 1;
}

void aPlanet(float size, float speed, float distance, int red, int green, int blue)
{
  pushMatrix();
    rotate(radians(_angle/speed));
    translate(distance,0);
    aCircle(0,0,size,red,green,blue);
  popMatrix();
}
void aCircle(float x, float y, float d, int red, int green, int blue)
{
  noStroke();
  fill(color(red,green,blue));
  circle(x,y,d);
}

void clearScreen()
{
  noStroke();
  fill(color(0,0,0,4));
  rect(0,0,width,height);
}
