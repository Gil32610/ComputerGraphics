class Doll {


  float cooX;
  float cooY;


  Doll(float cooX, float cooY) {
    this.cooX = cooX;
    this.cooY = cooY;
  }

  public void drawDoll() {
    ellipseMode(CENTER);
    rectMode(CENTER);
    stroke(0);
    fill(200);

    // Cabeça
    ellipse(cooX/2, cooY/3.5, 40, 40);

    // Corpo
    rect(cooX/2, cooY/3 + 20, 40, 60);



    //Braços e pernas
    pushMatrix();
    rectMode(CORNER);
    translate(cooX/2+22, cooY/3-5);
    
    rect(0, 0, 15, 40);
    popMatrix();

    pushMatrix();
    translate(cooX/2-37, cooY/3-5);
    rect(0, 0, 15, 40);
    popMatrix();
    rectMode(CENTER);

    // Braços
    //line((cooX/2) - 40, (cooY/4) + 60, (cooX/2) - 50, (cooY/4) + 100);
    //line((cooX/2) + 40, (cooY/4) + 60, (cooX/2) + 50, (cooY/4) + 100);

    // Pernas
    //line((cooX/2) - 20, cooY/4 + 120, cooX/2 - 40, cooY/4 + 200);
    //line(cooX/2 + 20, cooY/4 + 120, cooX/2 + 40, cooY/4 + 200);
  }
}
