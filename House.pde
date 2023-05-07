public class House {
  private float coordinateX;
  private float coordinateY;
  private float scale;
  public House(float coordinateX, float coordinateY) {
    this.coordinateX = coordinateX;
    this.coordinateY = coordinateY;
    this.scale = 0.;
    triangleMode(CENTER);
  }

  public void drawHouse(){
    triangle(coordinateX, coordinateY, x2, y2, x3, y3);

  }
  
  
}
