public void setup()
{
size(500, 500);
strokeWeight(5);

}
public void draw()
{
  
  if((int)(Math.random()*100) < 50){
  fill((int)(Math.random()*100)+150, 0, 0);
  stroke((int)(Math.random()*50)+10);
  background((int)(Math.random()*100)+150, 0, 0);
  } else {
   fill((int)(Math.random()*50)+10);
  stroke((int)(Math.random()*100)+150, 0, 0); 
  background((int)(Math.random()*50)+10);
  }
  sierpinski(0, 500, 500);
}

public void sierpinski(int x, int y, int len) 
{
  if(len <= 20){
   triangle(x, y, x+(len/2), y-len, x+len, y); 
  }else{
   triangle(x, y, x+(len/2), y-len, x+len, y); 
   sierpinski(x, y, len/2); 
   sierpinski(x + len/2, y, len/2);
   sierpinski(x + len/4, y - len/2, len/2);
  }
}
