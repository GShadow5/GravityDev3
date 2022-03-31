/*

Mouse overrides and functions

*/

void mouseDragged() {
  float mx = pmouseX - mouseX;
  float my = pmouseY - mouseY;
  offset.add(mx / scaleMul, my / scaleMul);
}

void mouseWheel(MouseEvent event){
  float e = event.getCount() * scrollDirection;
  //offset.sub(mouseX,mouseY);
  float delta = e < 0 ? 1.05 : e > 0 ? 1.0/1.05 : 1.0;
  scaleMul *= delta;
  //offset.add(mouseX,mouseY);
}

void mouseClicked() {
  boolean guiInteract = gui.clickManager(new Vector(mouseX,mouseY));
  if(!guiInteract){
    Vector mouse = mouseS();
    focus = pm.getCPlanet(mouse.x,mouse.y);
  }
}

Vector mouseS(){
  return new Vector((mouseX - width/2) * 1/scaleMul, (mouseY - height/2) * 1/scaleMul);
}
