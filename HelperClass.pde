public class Cloud {
  private float cooX;
  private float cooY;
  private float speed;
  private float oscilate;
  public Cloud(float cooX, float cooY, float speed, float oscilate) {
    this.cooX = cooX;
    this.cooY = cooY;
    this.speed = speed;
    this.oscilate = oscilate;
  }

  public void drawCloud() {
    pushMatrix();
    ellipseMode(CORNER);
    noStroke();
    ellipse(cooX, cooY+10, 80., 80.);
    ellipse(cooX-20, cooY-40, 80., 80.);
    ellipse(cooX+20, cooY-40, 80., 80.);
    ellipse(cooX-45, cooY, 80., 80.);
    ellipse(cooX+45, cooY, 80., 80.);
    popMatrix();
  }
  public void translateCloud() {
    if (this.cooX +speed < 0) {
      this.cooX = 1400;
      
      return;
    } else{
      this.cooY += cos(oscilate);
      this.cooX = (Math.abs(this.cooX+speed)%1400);
      oscilate+=.01;
    }
  }
  public float getX() {
    return this.cooX;
  }
}
