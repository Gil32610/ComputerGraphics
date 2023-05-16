public class House {
  private float coordinateX;
  private float coordinateY;
  private float scale;
  public House(float coordinateX, float coordinateY) {
    this.coordinateX = coordinateX;
    this.coordinateY = coordinateY;
    this.scale = 1;
    rectMode(CENTER);
  }

  public void drawHouse() {
    pushMatrix();
    translate(coordinateX, coordinateY);

    color c = color(200, 198, 0);
    fill(c);
    rect(0, 0, 150, 120);
    c = color(150, 75, 0);
    fill(c);
    triangle(-115, -60, 115, -60, 0, -160);

    // color c = color(200, 198, 0);
    // float middleSec =coordinateX - ((coordinateX - (coordinateX-200))/2);
    // fill(c);

    // rect(middleSec, coordinateY+45, 150, 90);
    // c = color(150, 75, 0);
    // fill(c);
    // triangle(coordinateX, coordinateY, coordinateX - 200, coordinateY, coordinateX -
    //   (coordinateX -(coordinateX-200))/2, coordinateY-120);

    popMatrix();
  }
}
