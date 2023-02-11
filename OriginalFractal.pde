float r = 0; 

void setup(){
  size(500,500);
  rectMode(CENTER);
}
public void draw(){
  background(0);
  translate(width/2, height/2);
  rotate(radians(r));
  myFractal(0, 0, 510);
  r += 0.5 ;
}

public void myFractal(float x, float y, float size){
  noStroke();
  rect(x, y, size, size);
  if(size >= 10){
    myFractal(x, y, size/2);
    fill(101,87,196, 70);
    myFractal(x+190, y, size/2);
    fill(87,93,196,70);
    myFractal(x-190, y, size/2);
    fill(63,133,216,70);
    myFractal(x, y-190, size/2);
    fill(148,69,214,70);
    myFractal(x, y+190, size/2);
  }
}
