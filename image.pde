class Imagen {
  PImage ojo;
  PImage lips;
  PImage lips2;
  int est;
  
  Imagen() {
   
   ojo = loadImage ("ojo.png");
   lips= loadImage ("lips.png");
   lips2= loadImage ("lips.png");
  }

    
void display(){
switch(this.est) {
  case 0:
      ojo = loadImage ("ojo.png");
      
    break;
    
  case 1:
    ojo.filter(INVERT);
    lips.filter(INVERT);
    lips2.filter(INVERT);
    break;
}
}



  void Dibujar() { 
    image(ojo, 200, 200);
    image(lips, 50, 550);
    lips.resize(100,100);
    image(lips2, 650, 550);
    lips2.resize(100,100);
  }
  
  
  
  void cambiofilter(){
    est++;
     if (est>1) {
      est = 0;
    }
  }
  }
