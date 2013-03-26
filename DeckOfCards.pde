ArrayList theDeck;

/*
 *
 * \trust
 commonality
 competency
 credibility - production bible
 
 zig zeegler - pre answer questions
 imagination tree
  - 
  
 object of pitch - get them to say no so you can find their need
 *
 *
 */

public class DeckOfCards{
  
  private int xSpacing = 100;
  private int ySpacing = 100;
  
  private int xOffset = 50;
  private int yOffset = 50;
  
  public DeckOfCards(){
    
    theDeck = new ArrayList();
    
    for ( int i = 0; i < 11; i++ ) {
      for ( int j = 0; j < 11; j++ ) {
        
        short groupId = 0;
        
        // The following groups match with their (i%4, j%4)  pairs
        // 0: (1,0) or (3,2)
        // 1: (0,3) or (2,1)
        // 2: (1,2) or (3,0)
        // 3: (0,1) or (2,3)
        // They're all unique but there's two pairs for each kind of card 
        
        switch ( i%4 ){
          
          case 0:
            if ( j%4 == 1 ) {
              groupId = 3;
            } else {
              groupId = 1;
            }
          break;
          
          case 1:
            if ( j%4 == 0 ) {
              groupId = 0;
            } else {
              groupId = 2;
            }
            break;
          
          case 2:
            if ( j%4 == 1 ) {
              groupId = 1;
            } else {
              groupId = 3;
            }
            break;
          
          case 3:
            if ( j%4 == 2 ) {
              groupId = 0;
            } else {
              groupId = 2;
            }
            break;
            
        }
        
        if ( i%2 != j%2 ) {
          theDeck.add(new Card(xOffset+(xSpacing*i), yOffset+(ySpacing*j), groupId));
        }
        
      }
    }
  }
  
  public void runIt(){
    for ( int i = 0 ; i < theDeck.size() ; i++ ){
      Card card = (Card) theDeck.get(i);
      card.updateCard();
      card.renderCard();
    }
  }
  
  public void iGuessIllHaveAMethodHereToo(float whatever, int fuckall){
    whatever += fuckall;
  }
  
}
