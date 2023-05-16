class Doll {


  float cooX;
  float cooY;
  color c;


  Doll(float cooX, float cooY) {
    this.cooX = cooX;
    this.cooY = cooY;
    c= color(255,255,255);
  }

  public void drawDoll() {
    
    ellipseMode(CENTER);
    rectMode(CENTER);
    stroke(0);
    fill(c);
    pushMatrix();
    translate(cooX,cooY);
    ellipse(0,0,40,40); //cabeça
    rect(0,50,40,60); //torso

    rect(30,45,15,35);//Braço direito
    rect(-30,45,15,35);//Braço esquerdo

    rect(10,102,15,40);//Perna direita
    rect(-10,102,15,40);//Perna esquerda
    popMatrix();

    // Cabeça
    // ellipse(cooX/2, cooY/3.5, 40, 40);

    // // Corpo
    // rect(cooX/2, cooY/3 + 20, 40, 60);



    // //Braços e pernas

    // //Braço direito
    // rectMode(CORNER);
    // pushMatrix();
    // translate(cooX/2+22, cooY/3-5);
    // rect(0, 0, 15, 40);
    // popMatrix();

    // //Braço esquerdo
    // pushMatrix();
    // translate(cooX/2-37, cooY/3-5);
    // rect(0, 0, 15, 40);
    // popMatrix();



    // pushMatrix();
    // translate( cooX/2+3, cooY/3 + 53);
    // rect(0, 0, 15, 40);

    // popMatrix();




    // pushMatrix();
    // translate( cooX/2-18, cooY/3 + 53);
    // rect(0, 0, 15, 40);
    // popMatrix();
    // rectMode(CENTER);

    // Braços
    //line((cooX/2) - 40, (cooY/4) + 60, (cooX/2) - 50, (cooY/4) + 100);
    //line((cooX/2) + 40, (cooY/4) + 60, (cooX/2) + 50, (cooY/4) + 100);

    // Pernas
    //line((cooX/2) - 20, cooY/4 + 120, cooX/2 - 40, cooY/4 + 200);
    //line(cooX/2 + 20, cooY/4 + 120, cooX/2 + 40, cooY/4 + 200);
  }

  public void setCoordinates(float cooX, float cooY){
    this.cooX = cooX;
    this.cooY= cooY;
  }
}
