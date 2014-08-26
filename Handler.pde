public class Handler{
  World world;
  int imgcounter;
  boolean isPressed = false;
  
  public Handler(){
    this.world = new World();
    this. imgcounter = 0;
  }
  
  void saveImg(){
    if(keyPressed && !isPressed){
      if(key == 's'){
        String filename = "automata" + nf(imgcounter, 3) + ".png";
        save(filename);
        imgcounter++;
        isPressed = true;
      }
    }else if(!keyPressed){
      isPressed = false;
    }
  }
  
}
