import gifAnimation.*;

/* A visualization inspired by the 3-card-monty and a random fabric scrap
 * Particles move around in grid-like patterns and titilate the viewer
 * Feature creep list:
 * - more animations
 * - Audio responsiveness
 * - keyboard input to control pattern selection
 * - Using PVector to hold position and motion data
 *
 * johnbentcope - March 2013
 */

final color WHITE = color(255,255,255,255);
final color BLACK = color(  0,  0,  0,255);

// Set this to true to color-code the Cards by their group
final boolean DEBUG = false;
final boolean MAKE_GIF = false;

DeckOfCards deck;

void setup(){
  size(800, 800);
  //size(250, 250);
  rectMode(CENTER);
  deck = new DeckOfCards();
  stroke(WHITE);
  strokeWeight(16);
  //strokeWeight(8);
  fill(BLACK);
  strokeJoin(ROUND);
}

void draw(){
  //background(BLACK);
  fill(0,0,0,5);
  rect(width/2, height/2, width+20, height+20);
  deck.runIt();
  if (frameCount > 100 && frameCount <= 200 && MAKE_GIF) {
    saveFrame();
  }
}
