/*

Actual GUI file that defines all gui elements

*/

class Gui {
  CButton cb;
  
  Gui(){
    cb = new CButton();
  }
  
  void display(){
    cb.display();
  }
  
  boolean clickManager(Vector mouse){
    return cb.clicked(mouse.x,mouse.y);
  }
}

//Center button
class CButton extends Button{
  
  CButton(){
    pos = new Vector(width/2,15);
    dim = new Vector(70,24);
    t = "center";
    tSize = 20;
  }
  
  void display(){
    fill(col);
    rectMode(CENTER);
    rect(pos.x,pos.y,dim.x,dim.y,rad);
    
    fill(tCol);
    textAlign(CENTER,CENTER);
    textSize(tSize);
    text(t,pos.x,pos.y - tSize/4);
  }
  
  boolean clicked(float mx, float my){
    if(mouseOver(mx,my)){
      flags.centerOnFocus = true;
      return true;
    }else{return false;}
  }
}
