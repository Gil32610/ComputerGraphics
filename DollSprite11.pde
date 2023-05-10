class Doll {


  float cooX;
  float cooY;


  Doll(float cooX, float cooY) {
    this.cooX = cooX;
    this.cooY = cooY;
  }

  public void drawDoll() {

    stroke(0);
    fill(200);

    // Cabeça
    ellipse(width/2, height/4, 80, 80);

    // Corpo
    rect(width/2 - 20, height/4 + 40, 40, 80);

    // Braços
    line(width/2 - 40, height/4 + 60, width/2 - 80, height/4 + 100);
    line(width/2 + 40, height/4 + 60, width/2 + 80, height/4 + 100);

    // Pernas
    line(width/2 - 20, height/4 + 120, width/2 - 40, height/4 + 200);
    line(width/2 + 20, height/4 + 120, width/2 + 40, height/4 + 200);
  }
}
