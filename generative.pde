void setup() {
  fullScreen(4);
}

final float aFrom = 20; 
final float aTo = 50; 

final float bFrom = -10; 
final float bTo = 10; 

final float cFrom = -20; 
final float cTo = 20; 

final float dFrom = -2; 
final float dTo = 2; 

float a1;
float b1;
float c1;
float d1;
  
float a2;
float b2;
float c2;
float d2;
  
float a3;
float b3;
float c3;
float d3;

void draw() {

  a1 = random(aFrom, aTo);
  b1 = random(bFrom, bTo);
  c1 = random(cFrom, cTo);
  d1 = random(dFrom, dTo);
  
  a2 = random(aFrom, aTo);
  b2 = random(bFrom, bTo);
  c2 = random(cFrom, cTo);
  d2 = random(dFrom, dTo);
  
  a3 = random(aFrom, aTo);
  b3 = random(bFrom, bTo);
  c3 = random(cFrom, cTo);
  d3 = random(dFrom, dTo);
  
  loadPixels();
  for (int i = 0; i < width; i++) {
    for (int j = 0; j < height; j++) {
      int index = i + j * width;
      pixels[index] = getCol((float) i / width, (float) j / height);
    }
  }
  updatePixels();
  save("output/img" + frameCount + ".jpg");
}
 
color getCol(float x, float y) {
  float value = 0;
  value += sin(x * a1 + cos(y * b1) * c1) * d1 + 0.5;
  value -= cos(y * a2 + sin(x * b2) * c2) * d2 + 0.5;
  value += sin(y * a3 + sin(y * b3) * c3) * d3 + 0.5;
  return color(value * 255 * x, value * 255 * (1-y), value * 255);
}
