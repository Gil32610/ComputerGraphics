PImage[] img; //<>// //<>// //<>// //<>// //<>//
Cloud[] cloud;
House house;
int cloudHeight;
float speed;
float oscilate;
int num;
color c;
void setup() {
  img = new PImage[5];

  for (int i = 0; i<img.length; i++) {
    img[i] = loadImage("Lonicera.png");
  }

  size(1280, 720, P3D);
  rectMode(CENTER);
  cloudHeight = 60;
  speed = .4;
  oscilate = 10;
  num = 2;
  cloud = cloudVector(num,cloudHeight,speed,oscilate);
  house = new House(1200, 450);
  c = color(255,255,255);
}
void draw() {
  background(90, 100, 190);
  c = color(255,255,255);
  fill(c);
  printClouds(cloud);
  
  pushMatrix();
  stroke(0);
  house.drawHouse();
  popMatrix();
  pushMatrix();
  c=color(12,170,45);
  fill(c);
  rect(width/2,650,width,140);
  popMatrix();
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
