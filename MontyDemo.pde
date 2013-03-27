// Gaudnek

final color WHITE = color(255,255,255,255);
final color BLACK = color(  25,  10,  18,255);

DeckOfCards deck;

void setup(){
  size(1200, 1200);
  rectMode(CENTER);
  deck = new DeckOfCards();
  noStroke();
  stroke(WHITE);
  strokeWeight(14);
  
}

void draw(){
  background(BLACK);
  
  //background(205);
  deck.runIt();
}
