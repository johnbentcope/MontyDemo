/* 
 * 
 * 
 */

public class Card{
  
  private int xHome;
  private int yHome;
  
  private float xPos;
  private float yPos;
  
  private float speed = .9;

  // Four ids total
  // Used for identifying which cards need to move where
  private int groupId;
  
  // 0 means everything moves down and to the right (*Pos++ all around)
  private int currentFormation = 0;
  
  public Card(int xHome, int yHome, int groupId){
    this.xHome = xHome;
    this.yHome = yHome;
    this.groupId = groupId;
    xPos = xHome;
    yPos = yHome;
  }
  
  public void renderCard(){
    rect(xPos, yPos, 80, 80);
  }
  
  
  
  public void updateCard(int selection){
    switch(selection){
      case 0:
        directSlideClockwise();
        break;
        
      default:
        break;
      
    }
  }

  private void directSlideClockwise(){  
    //*
    
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
    } //*/
  }
  
}
