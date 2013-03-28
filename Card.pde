/* 
 * Particles for animations
 * 
 * johnbentcope - March 2013
 *
 */

public class Card {

  // Starting position of Card
  private int xHome;
  private int yHome;

  // Current positon of Card
  private float xPos;
  private float yPos;

  // Distance at which *Pos variable should be reset to *Home
  private int xTarget;
  private int yTarget;

  // Increment/decrement rate for motion
  private float speed = 1.88;

  // Four ids total
  // Used for identifying which cards need to move where
  private int groupId;

  // 0 means everything moves down and to the right (*Pos++ all around)
  private int currentFormation = 0;

  public int loopNumber = 0;

  // Some patterns might change direction
  //   they will use this tick to determine that setting
  private boolean patternDirection = true;

  public Card(int xHome, int yHome, int groupId, int xSpacing, int ySpacing) {
    this.xHome = xHome;
    this.yHome = yHome;
    this.groupId = groupId;
    this.xTarget = xSpacing;
    this.yTarget = ySpacing;
    xPos = xHome;
    yPos = yHome;
  }

  // Draw Card
  public void renderCard() {
    rect(xPos, yPos, 80, 80);
    //rect(xPos, yPos, 40, 40);
  }

  // Animation pattern selector
  public void updateCard(int selection) {
    loopNumber = 0;
    switch(selection) {
      case 0:
        directSlide(patternDirection);
        break;
        
      case 1:
        diagonalDisplacement(patternDirection);
        break;
  
      default:
        break;
    }
  }

  // Basic animation moving Cards directly towards
  //   the next position in their grouping clockwise
  private void directSlide(boolean direction) {  

    // if direction == 0, slide clockwise
    // if direction == 1, slide counter-culturewise

    fill(0, 20);

    switch(groupId) {
      case 0:
        if (DEBUG) fill(255, 0, 0);
        if (direction) xPos+=speed; else xPos-=speed;
        yPos+=speed;
        break;
  
      case 1:
        if (DEBUG) fill( 0, 0, 255);
        xPos-=speed;
        if (direction) yPos+=speed; else yPos-=speed;
        break;
  
      case 2:
        if (DEBUG) fill( 0, 255, 0);
        if (direction) xPos-=speed; else xPos+=speed;
        yPos-=speed;
        break;
  
      case 3:
        if (DEBUG) fill(0);
        xPos+=speed;
        if (direction) yPos-=speed; else yPos+=speed;
        break;
  
      default:
        break;
    }

    checkForPositionReset();
  }
  
  private void diagonalDisplacement(boolean direction){
    
    // if direction is false, slope is negative
    // if true, slope is positive
    
    switch(groupId) {
      case 0:
        if (DEBUG) fill(255, 0, 0);
        if (direction) xPos += speed; else xPos -= speed;
        yPos += speed;
        break;
  
      case 1:
        if (DEBUG) fill( 0, 0, 255);
        xPos += speed;
        if (direction) yPos += speed; else yPos -= speed;
        break;
  
      case 2:
        if (DEBUG) fill( 0, 255, 0);
        if (direction) xPos -= speed; else xPos += speed;
        yPos -= speed;
        break;
  
      case 3:
        if (DEBUG) fill(0);
        xPos -= speed;
        if (direction) yPos -= speed; else yPos += speed;
        break;
  
      default:
        break;
    }

    checkForPositionReset();
    
  }

  private void checkForPositionReset() {

    // If the Card has traveled far enough, reset its position
    if (abs(xHome - xPos) >= xTarget && abs(yHome - yPos) >= yTarget) {

      resetPosition();

      loopNumber++;
      if (loopNumber%1 == 0) patternDirection = !patternDirection;
      if (loopNumber%1 == 0) speed = -1*speed;
      //if (loopNumber == 4 && MAKE_GIF) {
      //  exit();
      //}

      //speed = -1*speed;
    }
  }

  private void resetPosition() {
    xPos = xHome;
    yPos = yHome;
  }
}

