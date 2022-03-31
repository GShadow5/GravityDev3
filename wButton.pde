/*

Button class

*/

class Button {
  Vector pos;
  Vector dim;
  float rad = 3;
  color col = #413f54;
  String t = "";
  color tCol = 0;
  int tSize = 20;
  
  boolean mouseOver(float mx, float my){
    if (mx >= pos.x - dim.x/2 && mx <= pos.x + dim.x/2 &&
        my >= pos.y - dim.x/2 && my <= pos.y + dim.y/2) {
      return true;
    }else{
      return false;
    }
  }
}

/* DEPRECATED
class Button {
  Vector pos;
  Vector dim;
  float r = .5;
  String t = "";
  color col = (#413f54);
  color tCol = 0;
  
  boolean mouseOver = false;
  
  // INITIALIZERS

  Button(float _x, float _y, float _w, float _h){
    this.pos = new Vector(_x,_y);
    this.dim = new Vector(_w,_h);
  }
  Button(float _x, float _y, float _w, float _h, float _r){
    this.pos = new Vector(_x,_y);
    this.dim = new Vector(_w,_h);
    this.r = _r;
  }
  Button(float _x, float _y, float _w, float _h, color _col){
    this.pos = new Vector(_x,_y);
    this.dim = new Vector(_w,_h);
    this.col = _col;
  }
  Button(float _x, float _y, float _w, float _h, float _r, color _col){
    this.pos = new Vector(_x,_y);
    this.dim = new Vector(_w,_h);
    this.r = _r;
    this.col = _col;
  }
  
  
  // SETTERS
  void setText(String _t){this.t = _t;}
  void setRad(float _r){this.r = _r;}
  void setColor(color _col){this.col = _col;}
  
  // Set Position
  void setPos(Vector _pos){this.pos = _pos;}
  void setPos(float _x, float _y){this.pos = new Vector(_x,_y);}
  
  // Set Dimensions
  void setDim(Vector _dim){this.dim = _dim;}
  void setDim(float _w, float _h){this.dim = new Vector(_w,_h);}
  
  // OTHER FUNCTIONS
  void drawB(){
    fill(col);
    rectMode(CORNER);
    rect(pos.x,pos.y,dim.x,dim.y,r);
    fill(tCol);
    text(t,pos.x,pos.y);
  }
  
  boolean mouseOver(float mx, float my){
    if (mx >= pos.x && mx <= pos.x + dim.x &&
        my >= pos.y && my <= pos.y + dim.y) {
      return true;
    }else{
      return false;
    }
  }
}\

*/
