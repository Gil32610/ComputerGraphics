 //<>//
float translateY;
float translateX;
int time;
int m;
int count;
String current;
Cloud[] cloud = new Cloud[4];


void setup() {
  count =0;
  time = millis();
  translateY = .0;
  translateX = .0;
  size(1280, 720, P3D);
  rectMode(CENTER);
  cloud[0] = new Cloud(width, 45, .6);
  cloud[1] = new Cloud(width, 200, -.75);
  cloud[2] = new Cloud(width, 130, -.4);
  cloud[3] = new Cloud(width, 100, .82);
}
void draw() {
  background(90, 100, 190);
  printClouds(cloud);
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
