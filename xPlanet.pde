/*

Planet class

*/

class Planet {
  Vector pos;
  Vector vel;
  Vector ren = new Vector(0,0);
  float mass;
  color col = 100;
  float dia;
  String name;
  
  Planet(float x, float y, float mass){
    pos = new Vector(x,y);
    vel = new Vector(0,0);
    this.mass = mass;
    this.dia = constrain( sqrt(mass) * 5 ,1,100);
  }
  
  /* SETTERS */
  void setPos(Vector _pos) {this.pos = _pos;}
  void setPos(float x, float y) {this.pos = new Vector(x,y);}
  
  void setVel(Vector _vel) {this.pos = _vel;}
  void setVel(float x, float y) {this.vel = new Vector(x,y);}
  
  void setname(String _name){this.name = _name;}
  
  /* FUNCTIONS */
  void gravity(Planet p){
    float xDist = (p.pos.x - this.pos.x);
    float yDist = (p.pos.y - this.pos.y);
    float magsq = sq(xDist) + sq(yDist);
    
    float pMass = (this.mass * p.mass);
    
    float xGrav = xDist * g * (pMass/magsq);
    float yGrav = yDist * g * (pMass/magsq);

    this.vel.add(xGrav/this.mass,yGrav/this.mass);
  }
  void updatePos(){
    this.pos.add(this.vel);
  }
  void display(){
    fill(this.col);
    ren.set(pos.x - offset.x,pos.y - offset.y);
    circle(ren.x,ren.y,dia);
    if(flags.nameTags){
      fill(0);
      textAlign(CENTER,BOTTOM);
      textSize(20 * 1/scaleMul);
      text(name,ren.x,ren.y - dia/2);
    }
  }
}
