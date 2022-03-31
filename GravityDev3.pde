/*
    GravityDev3
    Third iteration of a 2D gravity simulator.     
    by Nayan Sawyer
    started Mar 2022
    version 0.3.4 Mar 31 2022
    
    Features include clicking on a planet to lock onto it, center a focussed 
    planet, and pan/zoom. Next version planned will be written in C++ for better 
    acuracy and memory management, as this one has floating point imprecision 
    issues, and Processing is not effecient with memory.

*/

PlanetManager pm; // Manages Planets
Gui gui; // Contains and manages gui
ActionFlags flags = new ActionFlags(); // Public global actions flags
Vector offset;

float g = 0.05; // Gravity constant
float scrollDirection = 1; // Multiply by -1 to change scroll direction
float scaleMul = 1.0; // Scale multiplier
float guiScale = 1.0; // Seperate gui scale multiplier

int focus = 1; // Planet in focus (-1 for no focus)
float focusTolerance = 10; // How much error can there be when clicking a planet

void setup(){
  size(1000,800);
  frameRate(60);
  noStroke();
  offset = new Vector(width/2, height/2);
  pm = new PlanetManager();
  gui = new Gui();
  
  
  pm.createPlanet(500.0, 400.0, 0.0, 0.0, 200.0);
  pm.createPlanet(850.0, 400.0, 0.0, 3.2, 25.0);
  pm.createPlanet(880.0, 400.0, 0.0, 4.3, 1.0);
  pm.createPlanet(700.0, 400.0, 0.0, 6.0, 2.0);
}







void draw(){
  background(205);
  
  pm.updateGravity();
  
  // Subtract from offset the difference between current offset and the planet in focus
  if(focus >= 0){
    if(flags.centerOnFocus){
      offset.sub(offset.x - pm.getPos(focus).x,offset.y - pm.getPos(focus).y); // Moves focused planet in center of screen
      flags.centerOnFocus = false;
    }else{
      offset.add(pm.getVel(focus).x,pm.getVel(focus).y); // Makes focused planet stationary
    }
  }
  
  /* PLANET MATRIX */
  pushMatrix();
  translate(width/2,height/2);
  scale(scaleMul);
  pm.drawPlanets();
  popMatrix();
  
  /* DEFAULT MATRIX */
  
  gui.display();
  
  /* DEBUG PRINTS
  println();
  //println(offset.x + " " + offset.y);
  Vector mouse = mouseS();
  println(mouse.x + " " + mouse.y);
  println(pm.getRenPos(0).x + " " + pm.getRenPos(0).y + " " + dist(pm.getRenPos(1).x,pm.getRenPos(1).y,mouse.x,mouse.y));
  /*
  if (focus >=0){
    println(pm.getPos(focus).x + " " + pm.getPos(focus).y);
    println((pm.getPos(focus).x - offset.x) + " " + (pm.getPos(focus).y - offset.y));}*/
}
