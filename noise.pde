class Noise {
  float[] x;
  float[] y;
  color[] col;
  float s = 0.001;
  float depth = 0.1;
  PImage img;
  Noise(){
   
  }

  void valores() {
 
    int n = 5;
    x = new float[n];
    y = new float[n];
    col = new color[n];
    img = loadImage("hoja.jpg");
    img.resize(width, height);
    img.loadPixels();
    for (int i = 0; i < x.length; i++) {
      x[i]= random(0, width);
      y[i]= random(0, height);
      int loc = int(x[i]) + int(y[i])*width;
      col[i] = img.pixels[loc];
    }
  }

  void Dibujar() {
    noStroke();
    depth = map(mouseY, 0, height, 0.5, 1.5);
    for (int i = 0; i < x.length; i++) {
      float alpha = customNoise(x[i] * s, y[i] * s)*1*PI;
      x[i]+= depth * cos(alpha);
      y[i]+= depth * sin(alpha);
      if (y[i] > height) {
        y[i] = 0;
        x[i] =2;
      }
      x[i]= x[i]%width;

      ellipse(x[i], y[i], 2, 2);
    }
  
     }
  
  float customNoise(float x, float y) {
    return pow(sin(0.9*x + noise(x, y)*map(mouseX, 0, width, 0, 5)*y), 3);
  }
  
}
