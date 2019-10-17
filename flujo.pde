class flujoPantallas {
  int estado;
  PFont fuente1; 
  PFont fuente2;
  
  flujoPantallas() {
    this.estado = 0;
  }

  void display() {
    switch(this.estado) {
    case 0:
      background(255);
      fuente1 = loadFont("Housemate-108.vlw");
      textFont(fuente1, 220);
      text("QUIET", 160, 400);
      fuente2= loadFont("Montserrat-Light-48.vlw");
      textFont(fuente2, 20);
      text("Presione 'a' para el cambio de pantalla", 40,650);
      break;


    case 1:
      background(200, 0, 55);
      fuente1 = loadFont("Housemate-108.vlw");
      textFont(fuente1, 100);
      text("Instrucciones", 180, 80);
      fuente2= loadFont("Montserrat-Light-48.vlw");
      fill(255);
      textFont(fuente2, 20);
      text("En este programa se desarrolla un dibujo generativo", 40,180);
      text("El mouse dirige donde se dibujarán cuadros azules, ", 40,210);
      text("hagalo rápido si quiere que los cuadrados estén juntos", 40,240);
      text("Deberá presionar 2 cuando quiera dejar de dibujar los cuadros azules", 40,270);
      text("Deberá presionar 3 cuando quiera detener el flujo de los circulos rosas", 40,300);
      text("Presione 4 si decide cambiar el filtro de las imagenes", 40,330);
      text("El momento en que usted decida presione 's' para guardar un jpg", 40,360);
      text("Preione 'r' para volver a inicar", 40,390);
      break;


    case 2:

      noStroke();  

      for (int i=10; i>100; i++) {
        tint(10+i++);
      }

      stroke(0);
      fill(255, 10); 
      box2d.step();
      noise.valores();
      noise.Dibujar();
      nav3.checkEdges();
      nav3.display();
      nav4.update();
      nav4.checkEdges();
      nav4.display();
      nav.update();
      nav.checkEdges();
      nav.display();
      nav2.update();
      nav2.checkEdges();
      nav2.display();
      nav3.update();
      ojo.Dibujar();

      for (Cuadro b : cuadros) {
        b.display();
      }
      for (int i = cuadros.size()-1; i >= 0; i--) {
        Cuadro b = cuadros.get(i);
        if (b.done()) {
          cuadros.remove(i);
        }
      }

      if (random(1) < 0.5) {

        Cuadro p = new Cuadro(40, 750);
        cuadros.add(p);
      }



      for (Cuadro2 b : cuadros2) {
        b.display();
      }
      for (int i = cuadros2.size()-1; i >= 0; i--) {
        Cuadro2 b = cuadros2.get(i);
        if (b.done()) {
          cuadros2.remove(i);
        }
      }

      if (random(1) < 0.5) {

        Cuadro2 p = new Cuadro2(760, 750);
        cuadros2.add(p);
      }

      break;



    case 3:
      background(255);
      break;
    }
  }



  void cambioPantalla() {
    estado++;
    if (estado==2) {
      background(10);
    }
    if (estado>2) {
      estado = 0;
    }
  }
}
