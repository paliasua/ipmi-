PImage img;
int cellSize = 20;

void setup() {
  size(800, 400);
  img = loadImage("F_19.jpeg");
  noStroke();
}

void draw() {
  background(255);
  
  
  image(img, 0, 0, 400, 400);

  // Onda 
  boolean activarOnda = (mouseX >= 400);
  float tiempo = millis() * 0.002;
  
  // Cuadrados
  for (int i = 0; i < 20; i++) {
    for (int j = 0; j < 20; j++) {
      float x = 400 + i * cellSize;
      float y = j * cellSize;
      
      // Color 
      if ((i + j) % 2 == 0) {
        fill(50, 100, 160); // azul
      } else {
        fill(0, 170, 120); // verde
      }
      
      rect(x, y, cellSize, cellSize);
    }
  }
  
  // Puntos
  for (int i = 0; i <= 20; i++) {
    for (int j = 0; j <= 20; j++) {
      float x = 400 + i * cellSize;
      float y = j * cellSize;

      // Mov onda
      if (activarOnda) {
        y += sin(tiempo + i * 0.5) * 5;
      }

      // Color2
      if ((i + j) % 2 == 0) {
        fill(255); // blanco
      } else {
        fill(0);   // negro
      }
      
      ellipse(x, y, 6, 6);
    }
  }
}
