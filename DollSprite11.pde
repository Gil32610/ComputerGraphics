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
    ellipse(cooX/2, cooY/4, 80, 80);

    // Corpo
    rect(cooX/2 - 20, cooY/4 + 40, 40, 80);

    // Braços
    line(cooX/2 - 40, cooY/4 + 60, cooX/2 - 80, cooY/4 + 100);
    line(cooX/2 + 40, cooY/4 + 60, cooX/2 + 80, cooY/4 + 100);

    // Pernas
    line(cooX/2 - 20, cooY/4 + 120, cooX/2 - 40, cooY/4 + 200);
    line(cooX/2 + 20, cooY/4 + 120, cooX/2 + 40, cooY/4 + 200);
  }
}
