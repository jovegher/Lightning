int startX = 250;
int startY = 0;
int endX = 0;
int endY = 150;
int b = (int)random(0, 360);


void setup()
{
  size(500, 500);
  background(0); 
  strokeWeight(0);
  frameRate(100);
}
void draw()
{
  stroke(255, 255, b);
  fill(0,0,0,30);
  rect(0,0,500,500);
  
  if (endY < 475)
  {
    strokeWeight(3);
    endX = startX + (int)random(-9, 9);
    endY = startY + (int)random(0, 18);
    line(startX, startY, endX, endY);
    startX = endX;
    startY = endY;
  }
  
  strokeWeight(0);
  fill(120, 40, 0);
  rect(-50, 450, 600, 400);
  fill(185, 184, 184);
  rect(0, 365, 120, 100);

  System.out.println(mouseX + " " + mouseY);
}
void mousePressed()
{
  startX = (int)random(0, 500);
  startY = 0;
  endX = 0;
  endY = 150;
}
