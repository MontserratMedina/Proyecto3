import shiffman.box2d.*;
import org.jbox2d.collision.shapes.*;
import org.jbox2d.common.*;
import org.jbox2d.dynamics.*;
flujoPantallas una;
Noise noise;
Nave nav, nav2;
Nave2 nav3, nav4;
Box2DProcessing box2d;
ArrayList<Cuadro> cuadros;
ArrayList<Cuadro2> cuadros2;
Imagen ojo , lips,lips2;


void setup() {


  size(800, 700);
  smooth();
  background(10);
  box2d = new Box2DProcessing(this);
  box2d.createWorld();
  box2d.setGravity(0, 1);
  una= new flujoPantallas();
  noise=new Noise();
  cuadros= new ArrayList<Cuadro>();
  cuadros2= new ArrayList<Cuadro2>();
  nav = new Nave();
  nav2= new Nave();
  nav3 = new Nave2();
  nav4= new Nave2();
  ojo=new Imagen();
  lips=new Imagen();
  
}

void draw() {
  noStroke();


  for (int i=10; i>100; i++) {
    tint(10+i++);
  }

  stroke(0);
  fill(255, 10); 
  box2d.step();
  nav3.update();
  nav3.checkEdges();
  nav3.display();
  nav4.update();
  nav4.checkEdges();
  nav4.display();
  nav2.update();
  nav2.checkEdges();
  nav2.display();
  nav.update();
  nav.checkEdges();
  nav.display();
  noise.valores();
  noise.Dibujar();
  ojo.display();
  ojo.Dibujar();
  una.display();

}
void keyPressed() {
  if (key=='a'||key=='A') {
    una.cambioPantalla();
  }

  if (key=='2') {
    nav.enable = !nav.enable;
    nav2.enable = !nav2.enable;
  }
  if (key=='3') {
    nav3.enable = !nav3.enable;
    nav4.enable = !nav4.enable;
  }
  if(key=='4'){
   ojo.cambiofilter(); 
    
  }
    if(key == 's'){
        save("imagen.jpg");
    }
    if(key=='r'){
     background(0);
     
    }
 
}
