/* 
 * Particles for animations
 * 
 * johnbentcope - March 2013
 *
 */

public class Card{
  
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
  private float speed = 2;

  // Four ids total
  // Used for identifying which cards need to move where
  private int groupId;
  
  // 0 means everything moves down and to the right (*Pos++ all around)
  private int currentFormation = 0;
  
  public Card(int xHome, int yHome, int groupId, int xSpacing, int ySpacing){
    this.xHome = xHome;
    this.yHome = yHome;
    this.groupId = groupId;
    this.xTarget = xSpacing;
    this.yTarget = ySpacing;
    xPos = xHome;
    yPos = yHome;
    
  }
  
  // Draw Card
  public void renderCard(){
    rect(xPos, yPos, 80, 80);
  }
  
  // Animation pattern selector
  public void updateCard(int selection){
    switch(selection){
      case 0:
        directSlideClockwise();
        break;
        
      default:
        break;
      
    }
  }
  
  // Basic animation moving Cards directly towards
  //   the next position in their grouping clockwise
  private void directSlideClockwise(){  
    
    switch(groupId){

      case 0:
        if (DEBUG) fill(255, 0, 0);
        xPos+=speed;
        yPos+=speed;
        break;
      
      case 1:
        if (DEBUG) fill( 0, 0, 255);
        xPos-=speed;
        yPos+=speed;
        break;
        
      case 2:
        if (DEBUG) fill( 0, 255, 0);
        xPos-=speed;
        yPos-=speed;
        break;
      
      case 3:
        if (DEBUG) fill(0);
        xPos+=speed;
        yPos-=speed;
        break;
      
      default:
        break;
    }
    
    // If the Card has traveled far enough, reset its position
    if (abs(xHome - xPos) >= xTarget && abs(yHome - yPos) >= yTarget){
      resetPosition();
    }
    
  }
  
  private void resetPosition(){
    xPos = xHome;
    yPos = yHome;
  }
  
}
