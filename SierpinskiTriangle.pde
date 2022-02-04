
void setup(){
  size(800,800);  
}

void draw(){
  background(255);
  sierpinski(0, 0, mouseY);

}

void sierpinski(int x, int y, int size){
  strokeWeight(0.5);
  if(size<= 1){  return; }
  triangle(x,y,x+size/2, y+size/2, x+size, y);
  sierpinski(x, y, size/2);
  sierpinski(x+size/2, y, size/2);
  sierpinski(x+size/4, y+size/2, size/2);
}
