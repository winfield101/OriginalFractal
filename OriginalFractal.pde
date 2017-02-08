float angle;
float jitter;

public void setup()
{
	size(600,600);
	rectMode(CENTER);
	ellipseMode(CENTER);

}
public void draw()
{	background(0);
	if (second() % 2 == 0) {  
    jitter = 0.1;
  }
  angle = angle + jitter;
  float c = cos(angle);
  translate(width/2, height/2);
  rotate(c);
  myFractal(0,0,500);   
}
public void myFractal(int x, int y, int siz)
{	fill((int)(Math.random()*256),(int)(Math.random()*256),(int)(Math.random()*256));
	ellipse(x,y,siz+10,siz+10);
	
	rect(x,y,siz,siz);
	if(siz>10)
	{
		myFractal(x-siz/2,y,siz/2);
		myFractal(x+siz/2,y,siz/2);
	}
}
