final color WHITE = color(255,255,255,255);
final color BLACK = color(  0,  0,  0,255);

final boolean DEBUG = false;

DeckOfCards deck;

void setup(){
  size(1200, 1200);
  rectMode(CENTER);
  deck = new DeckOfCards();
  noStroke();
  stroke(WHITE);
  strokeWeight(14);
  fill(BLACK);
  
}

void draw(){
  background(BLACK);
  
  //background(205);
  deck.runIt();
}
