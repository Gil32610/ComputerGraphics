import processing.core.*; //<>//

PImage[] img; //<>// //<>// //<>// //<>// //<>// //<>// //<>// //<>// //<>// //<>//
Cloud[] cloud;
House house;
int cloudHeight;
float speed;
float oscilate;
float dollXCoordinate, translate;
int num, e1X, e2X;
color c;
Doll d;
Eye e1, e2;
float angle2 = 0;
float scale = 1;
color violet = color(148, 0, 211);
color indigo = color(75, 0, 130);
color blue = color(0, 0, 255);
color green = color(0, 255, 0);
color yellow = color(255, 255, 0);
color orange = color(255, 127, 0);
color red = color(255, 0, 0);
color backGround = color(90, 100, 190);
color[] rainbow = {violet, indigo, blue, green, yellow, orange, red, backGround};

float angle = 0;
float sunRadius = 120;
boolean raysActivation = false;

void setup() {
  img = new PImage[5];

  for (int i = 0; i<img.length; i++) {
    img[i] = loadImage("Lonicera.png");
  }
  dollXCoordinate = 100;
  e1X = 40;
  e2X = 60;

  d = new Doll(dollXCoordinate, 500);
  translate =.0;
  size(1280, 720, P3D);
  rectMode(CENTER);
  cloudHeight = 60;
  speed = .4;
  oscilate = 10;
  num = 2;
  cloud = cloudVector(num, cloudHeight, speed, oscilate);
  house = new House(1000, 550, scale);
  e1 = new Eye(e1X, 500, 10);
  e2 = new Eye(e2X, 500, 10);
  c = color(255, 255, 255);
}
void draw() {
  background(90, 100, 190);
  noStroke();
  fill(c);
  rainbowPlot();
  starPlot();// desenha a estrela
  
  c = color(240, 230, 220);
  fill(c);
  printClouds(cloud);
  grassPlot(); //desenha o gramado
  housePlot(house); //desenha a casa


  c = color(255, 255, 255);
  d.drawDoll();

  d.setXCoordinate(dollXCoordinate + 400);

  house.setScale(scale);

  e1.update(mouseX, mouseY);
  e2.update(mouseX, mouseY);

  e1.display();
  e2.display();

  e1.setX(e1X + 450);
  e2.setX(e2X + 450);

  translate += 5 * cos(oscilate*.2);
  oscilate+=.1;
  
  // Desenho em 3D
  
  sunPlot();
  if(raysActivation){
    
    raysPlot();
  }
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
  stroke(0);
  pushMatrix();
  house.drawHouse();
  popMatrix();
  noStroke();
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
  if (angle2 == 1) {
    rotate(frameCount / -100.0);
  } else {
    rotate(0);
  }
  star(0, 0, 30, 70, 5);
  popMatrix();
}
void rainbowPlot() {
  pushMatrix();
  noStroke();
  strokeCap(SQUARE);

  for (int i = 0; i< 8; i++) {
    fill(rainbow[i]);
    bezier(20 + 10*i, 620 + 12*i, mouseX, mouseY + (i*15), mouseX, mouseY + (i*15), 1200 - 10 * i, 620 + 12*i);
  }
  strokeWeight(1);
  stroke(0);
  popMatrix();
}
void sunPlot(){

  lights(); // Ativa a iluminação 3D
  
  translate(width - sunRadius, sunRadius, -300); // Move a câmera para uma posição adequada
  rotateX(radians(120));
  
  fill(255, 255, 0);   // Define a cor do sol
  
  sphere(sunRadius);   // Desenha o sol
  
  rotateY(angle);   // Rotaciona o sol
  angle += 0.01; 
}  
void raysPlot(){
  
    int numRays = 20;
    float angleIncrement = 360.0 / numRays;
    float rayLength = sunRadius * 2;
  
    stroke(255, 255, 0);
    strokeWeight(2);
  
    for (float a = 0; a < 360; a += angleIncrement) {
      float x = cos(radians(a)) * rayLength;
      float y = sin(radians(a)) * rayLength;
      line(0, 0, x, y);
    } 
}  

void keyPressed() {
  if (key == 'g' || key == 'G') {

    angle2 = 1;  // Gira
  } else if (key == 'p' || key == 'P') {

    angle2 = 0;  // Para
  } else if (keyCode == LEFT) {

    // Incrementa o valor da escala
    scale -= 0.05;
    dollXCoordinate -= 22;
    e1X -= 22;
    e2X -= 22;

    // Limita o valor da escala entre 0 e 1
    scale = constrain(scale, 1, 1.5);
    dollXCoordinate = constrain(dollXCoordinate, 100, 320);
    e1X = constrain(e1X, 40, 260);
    e2X = constrain(e2X, 60, 280);
  } else if (keyCode == RIGHT) {

    // Incrementa o valor da escala
    scale += 0.05;
    dollXCoordinate += 22;
    e1X += 22;
    e2X += 22;

    // Limita o valor da escala entre 0 e 1
    scale = constrain(scale, 1, 1.5);
    dollXCoordinate = constrain(dollXCoordinate, 100, 320);
    e1X = constrain(e1X, 40, 260);
    e2X = constrain(e2X, 60, 280);
  }  
}

void mousePressed() {
  if (mouseButton == LEFT) {
    
    raysActivation = !raysActivation;
  }
}
