public void setup(){
size (500, 500);
ellipseMode(CENTER);
}
public void draw(){
background (0);
stroke (random(256), random(256), random(256));
myFractal (250, 250, 480);	
}
public void myFractal(int x, int y, int siz){
ellipse(x, y, siz, siz);
if (siz>1)
{
myFractal(x-siz/3, y, siz/3);
myFractal(x+siz/3, y, siz/3);
myFractal(x, y-siz/3, siz/3);
myFractal(x, y+siz/3, siz/3);
}
}