public class House {
  private float coordinateX;
  private float coordinateY;
  private float scale;
  public House(float coordinateX, float coordinateY) {
    this.coordinateX = coordinateX;
    this.coordinateY = coordinateY;
    this.scale = 0.;
    rectMode(CENTER);
  }

  public void drawHouse() {
    pushMatrix();
    float middleSec =coordinateX - ((coordinateX - (coordinateX-200))/2);
    rect(middleSec, coordinateY+150,150,90);
    triangle(coordinateX, coordinateY, coordinateX - 200, coordinateY, coordinateX -
      (coordinateX -(coordinateX-200))/2, coordinateY-120);
      
    popMatrix();
  }
}
