void intro() {
   background(#AAC9F2);
    
   fill(255);
   rect(325, 400, 200, 100); //START 

   fill(0);
   textSize(35);
   text("START", 348, 459);

}

void introClicks() {
  
  if (mouseX > 325 && mouseX < 525 && mouseY > 400 && mouseY < 500) {
    mode = GAME; //START GAME
    
  }
}
