/* 
 * 
 * 
 */

public class Card{
  
  private int xHome;
  private int yHome;
  
  private float xPos;
  private float yPos;

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
  
  public void updateCard(){
    
    //*
    
    switch(groupId){

      case 0:
        fill(255, 0, 0);
        break;
      
      case 1:
        fill( 0, 0, 255);
        break;
        
      case 2:
        fill( 0, 255, 0);
        break;
      
      case 3:
        fill(0);
        break;
      
      default:
        break;
    } //*/
  }
  
}
