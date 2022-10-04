int nMover = 100;
Mover[] m = new Mover[nMover];
int counter = nMover;

void setup ()
{
  size(1000,1000,P3D);
  for(int i = 0; i < m.length; i = i + 1)
  {
    m[i] = new Mover();
  }
}

void draw()
{
  fill(color(0,0,0,10));
  rect(0,0,width,height);
  for(int i = 0; i < m.length; i = i + 1)
  {
  m[i].update();
  m[i].check();
  m[i].show();
  }
  fill(color(255,0,100,30));
  circle(mouseX, mouseY, 30);
  hud();
}
 
 void hud()
 {
   translate(width/2,10);
   fill(255);
   textAlign(CENTER);
   text(counter,0,30);
   translate(nMover/2,0);
   noStroke();
   fill(color(255,0,100));
   rect(0,0,counter,10);
   stroke(255);
   noFill();
   rect(0,0,nMover,10);
 }
 
 void mouseClicked()
 {
   for(int i = 0; i < m.length; i = i + 1)
   {
     m[i].lifeCheck(mouseX,mouseY);
   }
 }
