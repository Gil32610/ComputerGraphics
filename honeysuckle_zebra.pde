PImage[] img; //<>// //<>// //<>// //<>// //<>// //<>// //<>// //<>// //<>//
Cloud[] cloud;
House house;
int cloudHeight;
float speed;
float oscilate;
float dollXCoordinate, translate;
int num;
color c;
Doll d;
void setup() {
  img = new PImage[5];

  for (int i = 0; i<img.length; i++) {
    img[i] = loadImage("Lonicera.png");
  }
  dollXCoordinate = 100;
  d = new Doll(dollXCoordinate, 500);
  translate =.0;

  size(1280, 720, P3D);
  rectMode(CENTER);
  cloudHeight = 60;
  speed = .4;
  oscilate = 10;
  num = 2;
  cloud = cloudVector(num, cloudHeight, speed, oscilate);
  house = new House(600, 500);
  c = color(255, 255, 255);
}
void draw() {
  background(90, 100, 190);

  noStroke();
  fill(c);
  ellipse(1100, 100, 180, 180);
  starPlot();// desenha a estrela
  c = color(240, 230, 220);
  fill(c);
  printClouds(cloud);

  grassPlot(); //desenha o gramado
  housePlot(house); //desenha a casa

  c = color(255, 255, 255);
  d.drawDoll();
  d.setXCoordinate(translate%width + 700);
  translate += 5 * cos(oscilate*.2);
  oscilate+=.1;
}

public void printClouds(Cloud[] cloud) {
  for (int i =0; i<cloud.length; i++) {
    cloud[i].drawCloud();
    cloud[i].translateCloud();
  }
}

public  Cloud[] cloudVector(int num, int cloudHeight, float speed, float oscilate) {
  Cloud[] cloud = new Cloud[num];
  for (int i =0; i<cloud.length; i++) {
    cloud[i] = new Cloud(width, cloudHeight, speed, oscilate);
    cloudHeight+= 10;
    speed = i%2 == 0? -(speed +.15f):(float) Math.abs(speed + .15f);
    oscilate+= 5;
  }
  return cloud;
}

void star(float x, float y, float radius1, float radius2, int npoints) {
  float angle = TWO_PI / npoints;
  float halfAngle = angle/2.0;
  beginShape();
  for (float a = 0; a < TWO_PI; a += angle) {
    float sx = x + cos(a) * radius2;
    float sy = y + sin(a) * radius2;
    vertex(sx, sy);
    sx = x + cos(a+halfAngle) * radius1;
    sy = y + sin(a+halfAngle) * radius1;
    vertex(sx, sy);
  }
  endShape(CLOSE);
}

void housePlot(House house) {
  pushMatrix();
  stroke(0);
  house.drawHouse();
  popMatrix();
}

void grassPlot() {
  pushMatrix();
  c=color(12, 170, 45);
  fill(c);
  rect(width/2, 650, width, 140);
  popMatrix();
}

void starPlot() {
  pushMatrix();
  noStroke();
  c = color(230, 200, 2);
  fill(c);
  translate(80., 100);
  rotate(frameCount / -100.0);
  star(0, 0, 30, 70, 5);
  popMatrix();
}
