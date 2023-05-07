public class House {
  private float coordinateX;
  private float coordinateY;
  private float scale;
  public House(float coordinateX, float coordinateY) {
    this.coordinateX = coordinateX;
    this.coordinateY = coordinateY;
    this.scale = 0.;
  }

  public void drawHouse() {
    pushMatrix();
    triangle(coordinateX, coordinateY, coordinateX - 200, coordinateY, coordinateX -
      (coordinateX -(coordinateX-200))/2, coordinateY-120);
    popMatrix();
  }
}
