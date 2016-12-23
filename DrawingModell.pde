// a simple modell with cordinates axis and a cool model of the chip
// you may use drawsimple instead of. 
// thr-# 15.12.2016 
void drawCube() {  

  pushMatrix();
  translate(VIEW_SIZE_X/2, VIEW_SIZE_Y/2 + 50, 0);
  scale(1, 1, 1);
  // a demonstration of the following is at 
  // http://www.varesano.net/blog/fabio/ahrs-sensor-fusion-orientation-filter-3d-graphical-rotating-cube
  rotateZ(-Euler[2]);
  rotateX(-Euler[1]);
  rotateY(-Euler[0]);
  drawAxes();
  // buildBoxShape();
  popMatrix();
}

void drawsimple() {
  noFill(); 
  stroke(255);
  fill(0, 255, 0);
  stroke(0, 0, 255);
  box(10, 100, 100);
  box(75, 5, 5);
  box(300, 0, 0);
  box(0, 300, 0);
  box(0, 0, 300);
  sphere(10);
  translate(120, 0, 0);
  stroke(255, 0, 0);
  sphere(10);
}

void drawbox() {
  noFill();
  stroke(255, 255, 255);
  box(400);
}

void drawAxes() {
  drawbox();
  drawboard();
  stroke(255, 0, 0);
  fill(255, 0, 0);
  //line(-300, 0, 0, 300, 0, 0);
  box(400, 3, 3);
  stroke(0, 255, 0);
  fill(0, 255, 0);
  //line(0, -300, 0, 0, 300, 0);
  box(3, 400, 3);
  stroke(0, 0, 255);
  fill(0, 0, 255);
  //line(0, 0, -300, 0, 0, 300);
  box(3, 3, 400);
  fill(37, 83, 206);
  box(100, 8, 200);
  fill(255, 255, 255);
  text("+y", -210, 0, 0);
  text("-y: "  + nf(degrees(Euler[2]), 2, 1)  + "°", 210, 0, 0);
  text("-z: " + nf(degrees(Euler[0]), 2, 1)  + "°", 0, 210, 0);
  text("+z", 0, -210, 0);
  text("-x: "  + nf(degrees(Euler[1]), 2, 1) + "°", 0, 0, 210);
  text("+x", 0, 0, -210);
}

void drawboard() {
  pushMatrix();
  translate(0, -5, 0);
  rotateX(HALF_PI);
  rotateZ(HALF_PI);
  image(img, 0, 0);
  popMatrix();
  pushMatrix();
  translate(0, 5, 0);
  rotateX(3*HALF_PI);
  rotateZ(-HALF_PI);
  image(img2, 0, 0);
  popMatrix();
}