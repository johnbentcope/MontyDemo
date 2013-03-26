// Gaudnek

DeckOfCards deck;

void setup(){
  size(1200, 1200);
  rectMode(CENTER);
  deck = new DeckOfCards();
  noStroke();
  stroke(255);
  strokeWeight(14);
  fill(0);
  
}

void draw(){
  background(0);
  
  //background(205);
  deck.runIt();
}
