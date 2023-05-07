public class House {
  private float coordinateX;
  private float coordinateY;
  private float scale;
  public House(float coordinateX, float coordinateY) {
    this.coordinateX = coordinateX;
    this.coordinateY = coordinateY;
    this.scale = 0.;
    
  }

  public void drawHouse(){
    pushMatrix();
    triangle(coordinateX, coordinateY, coordinateX+30, coordinateY+30, coordinateX -50, coordinateY-50);
    popMatrix();
  }
  
  
}
