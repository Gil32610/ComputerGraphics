PImage[] img; //<>// //<>// //<>//
Cloud[] cloud;
House house;
int cloudHeight;
float speed;
float oscilate;

void setup() {
  img = new PImage[5];
  
  for(int i = 0; i<img.length;i++){
   img[i] = loadImage("Lonicera.png");
  }

  size(1280, 720, P3D);
  rectMode(CENTER);
  cloudHeight = 60;
  speed = .4;
  oscilate = 10;
  cloud = new Cloud[2];
  for(int i =0; i<cloud.length;i++){
    cloud[i] = new Cloud(width,cloudHeight, speed,oscilate);
    cloudHeight+= 10;
    speed = i%2 == 0? -(speed +.15f):(float) Math.abs(speed + .15f);
    oscilate+= 5;
  }
  // cloud[0] = new Cloud(width, 45, .6, 10);
  // cloud[1] = new Cloud(width, 200, -.75,20);
  // cloud[2] = new Cloud(width, 130, -.4,40);
  // cloud[3] = new Cloud(width, 100, .82,25);
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
  //cloud[1].drawCloud();
  //cloud[1].translateCloud();
 // cloud[2].drawCloud();
  //cloud[2].translateCloud();
  cloud[1].drawCloud();
  cloud[1].translateCloud();
}
