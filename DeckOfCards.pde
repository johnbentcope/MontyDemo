/*
 * Particle manager
 *
 * johnbentcope - March 2013
 *
 */

ArrayList theDeck;

public class DeckOfCards{
  
  // Spacing for grid positions
  private int xSpacing = 100;
  private int ySpacing = 100;
  
  // Top-left offsets for grid placement
  private int xOffset = -50;
  private int yOffset = -50;
  
  public DeckOfCards(){
    
    theDeck = new ArrayList();
    
    fillDeck(theDeck);

    
  }
  
  // Instantializeiate all of the Cards in the manager
  private void fillDeck(ArrayList deck){
    
    for ( int i = 0; i < 11; i++ ) {
      
      for ( int j = 0; j < 11; j++ ) {
        
        // When i%2 != j%2, it creates a checkerboard grid,
        //   only placing a particle in every other square
        if ( i%2 != j%2 ) {
          
          deck.add( new Card( xOffset+(xSpacing*i), yOffset+(ySpacing*j), getGroupId(i,j), xSpacing, ySpacing ) );

        }
        
      }
    
    }
  }
  
  // This is a mess and I'm sorry. Someone with a math degree should refactor this
  private int getGroupId(int i, int j){
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
    return groupId;
  }
  
  // Gets Card out of the ArrayList and updates its position and draws it to the screen
  public void runIt(){
    for ( int i = 0 ; i < theDeck.size() ; i++ ){
      Card card = (Card) theDeck.get(i);
      card.updateCard(0);
      card.renderCard();
    }
  }
  
}
