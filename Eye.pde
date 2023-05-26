public class Eye {
  
  int x, y;
  int size;
  float angleEye = 0;
  
  Eye(int x, int y, int size){
    
    this.x = x;
    this.y = y;
    this.size = size;
  }
  
  public void update(int mX, int mY){
    
    angleEye = atan2(mY-y, mX-x);
  }
  
  public void display(){
    stroke(0);
    ellipseMode(CENTER);
    pushMatrix();
    translate(x, y);
    fill(255);
    ellipse(0, 0, size, size);
    rotate(angleEye);
    fill(153, 204, 0);
    ellipse(size/4, 0, size/2, size/2);
    popMatrix();
    noStroke();
  }
  
  public void setX(int x){
   
    this.x = x;
  }
}
