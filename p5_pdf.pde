import processing.pdf.*;

boolean record;

void setup (){
size(300,300);
frameRate(2);
}
void draw (){
  background(220);
  if(record){
    beginRecord(PDF, "ordenador-####.pdf");
  }
ordenador (random(10,230),random(10,150));
 if (record) {
    endRecord();
  record = false;
  }
}
void ordenador (float ample, float alt){
rectMode(CENTER);
noStroke();
fill(29,73,236);
ellipse(ample/2,alt*1.5,ample/2,alt/5);
fill(0);
rect(ample/2,alt+15,ample/7,alt-30,10);
fill(0);
rect(ample/2,alt/2,ample,alt,4);
fill(255);
rect(ample/2,alt/2,ample-30,alt-30,4);
fill(255,251,13);
ellipse(ample/2,alt-7,5,5);
}

void mousePressed() {
  record = true;
}
