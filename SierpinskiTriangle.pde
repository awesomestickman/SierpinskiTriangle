public void setup()
{
size(800,800);
fill(0,0,0);
}
public void draw()
{
	fill(255,255,255);
	rect(0, 0, 800, 800);
	//fill(0,0,0);
	stroke(0);
 sierpinski(0,800,800);
}
public void mouseDragged()//optional
{

}
public void sierpinski(int x, int y, int len) 
{
  if(len>6){
sierpinski(x,y,len/2);

sierpinski(x+len/2,y,len/2);
sierpinski(x+len/4,y-len/2,len/2);
  }
  else{
    triangle(x, y, x+len, y, x+len/2, y-len);


  }
}