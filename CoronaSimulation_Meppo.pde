Bevoelkerung bevoelkerung;
void setup(){
  pixelDensity(displayDensity());
  size(1200, 600);
  bevoelkerung = new Bevoelkerung(200);
  
}

void draw(){
  background(255);
  noStroke();
  fill(50);
  rect(0,100, width, height -100);
  
  bevoelkerung.zeichnen();
  bevoelkerung.bewegen();
  
  bevoelkerung.kontakt();
  //bevoelkerung.kontakt1();
  //bevoelkerung.kontakt2();
  //bevoelkerung.kontakt3();
  //bevoelkerung.kontakt4();
  bevoelkerung.heilen();
  bevoelkerung.zeichnenStatus();

}
