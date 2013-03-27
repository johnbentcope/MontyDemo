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

DeckOfCards deck;


void setup(){
  size(800, 800);
  rectMode(CENTER);
  deck = new DeckOfCards();
  stroke(WHITE);
  strokeWeight(14);
  fill(BLACK);
  
}

void draw(){
  background(BLACK);
  deck.runIt();
}
