/*

Planet manager is a container class for all planets and planet io

*/

class PlanetManager {
  ArrayList<Planet> planets = new ArrayList<Planet>();
  
  /* FACTORIES */
  void createPlanet(float x, float y, float mass){
    planets.add(new Planet(x,y,mass));
  }
  void createPlanet(float x, float y, float xSpeed, float ySpeed, float mass){
    planets.add(new Planet(x,y,mass));
    planets.get(planets.size() - 1).setVel(xSpeed, ySpeed);
    planets.get(planets.size() - 1).setname(str(planets.size() - 1));
  }
  
  /* GETTERS */
  Vector getPos(int f){return planets.get(f).pos;}
  Vector getRenPos(int f){return planets.get(f).ren;}
  Vector getVel(int f){return planets.get(f).vel;}
  
  /* FUNCTIONS */
  void updateGravity(){
    for(int i = 0; i < planets.size(); i++){
      for(int j = 0; j < planets.size(); j++){
        if(i != j){
          planets.get(i).gravity(planets.get(j));
        }
      }
    }
    for(int i = 0; i < planets.size(); i++){
      planets.get(i).updatePos();
    }
  }
  
  void drawPlanets(){
    for(int i = 0; i < planets.size(); i++){
      planets.get(i).display();
    }
  }
  
  int getCPlanet(float mx, float my){
    int out = -1;//new Vector(mx,my);
    float smallestDist = focusTolerance * 10;
    
    for(int i = 0; i < pm.planets.size(); i++){
      float dist = dist(pm.getRenPos(i).x,pm.getRenPos(i).y,mx,my);
      
      // If no planets are within tolerance the focus will be set to -1, ie: no planet in focus
      if(dist < (focusTolerance * 1/scaleMul) + (pm.planets.get(i).dia / 2)){//(focusTolerance * 1/scaleMul)){ 
        println(dist + " " + (focusTolerance * 1/scaleMul) + " " + (pm.planets.get(i).dia / 2));
        //println(pm.planets.get(i).dia);
        if(smallestDist > dist){
          smallestDist = dist;
          out = i;
        }
      } 
    }
    return out;
  }
}
