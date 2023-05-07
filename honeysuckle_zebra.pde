 //<>//
float translateY;
float translateX;
int time;
int m;
int count;
String current;
Cloud[] cloud = new Cloud[4];
House house;


void setup() {
  count =0;
  time = millis();
  translateY = .0;
  translateX = .0;
  size(1280, 720, P3D);
  rectMode(CENTER);
  cloud[0] = new Cloud(width, 45, .6, 10);
  cloud[1] = new Cloud(width, 200, -.75,20);
  cloud[2] = new Cloud(width, 130, -.4,40);
  cloud[3] = new Cloud(width, 100, .82,25);
  house = new House(1200,450);
}
void draw() {
  background(90, 100, 190);
  printClouds(cloud);
  pushMatrix();
  stroke(0);
  house.drawHouse();
  popMatrix();
}

public void printClouds(Cloud[] cloud) {
  cloud[0].drawCloud();
  cloud[0].translateCloud();
  cloud[1].drawCloud();
  cloud[1].translateCloud();
  cloud[2].drawCloud();
  cloud[2].translateCloud();
  cloud[3].drawCloud();
  cloud[3].translateCloud();
}
