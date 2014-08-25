public class Handler{
  World world;
  
  public Handler(){
    this.world = new World();
  }
  
  void saveImg(){
    if(keyPressed){
      if(key == 's'){
        println("debug");
        save("automata.png");
      }
    }
  }
  
}
