//3-D Objects 
//jan, 10, 22 



float rotx, roty;
void setup () { 
  size (800, 800, P3D);
} 


void draw () { 
  background (#2C97F2);
  cube (width/2, height/2-50, 0, #AFFFF0, 200);
  cube (0, 0, 0, #0000FF, 150);
  cube (700, 600, 0, #86FFAF, 200);
  cube (150, 300, 0, #3F9AE8, 50);
  ball (500, 0, #C9E0E0, 100);
  ball (0, 500, #00CBCA, 150);
  ball (300, 600, #3FE879, 100);
  ball (650, 300, #AFD6F7, 75);
}

void cube (float x, float y, float z, color c, float size) { 
  pushMatrix ();
  translate ( x, y, z); 
  noFill (); 
  rotateX(rotx);
  rotateY(roty);
  //rotateZ();
  fill (c);
  stroke (0);
  strokeWeight (3); 
  box(size); //side length 
  popMatrix();
} 



void ball (float _x, float _y, color _c, float _size) {

  pushMatrix ();
  translate ( _x, _y); 
  noFill (); 
  rotateX(rotx);
  rotateY(roty);
  //rotateZ();
  fill (_c);
  stroke (0);
  strokeWeight (3); 
  sphere(_size); //side length 
  popMatrix();
}



void mouseDragged () {
  rotx= rotx + (pmouseY - mouseY)*0.01;
  roty= roty+ (pmouseX- mouseX) *-0.01;
}
