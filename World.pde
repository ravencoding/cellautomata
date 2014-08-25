public class World{
  int[][] cells = {{0,0,0,0,0},
                  {0,1,1,1,0},
                  {0,1,1,1,1},
                  {1,1,1,1,0},
                  {1,1,1,1,1}};
                  
  int[][] next = new int[5][5];
                  
  int[] dx = {0, -1, 0, 1};
  int[] dy = {-1, 0, 1, 0};
  
  
  public World(){
  }
  
  void stepforward(){
      for(int i = 0; i < cells.length; i++){
          for(int j = 0; j < cells.length; j++){
              int counter = 0;
              for(int k = 0; k < 4; k++){
                 int watchy = i + dy[k];
                 int watchx = j + dx[k];
                 if(watchy >= 0 && watchy < 5 && watchx >= 0 && watchx < 5){
                     if(cells[watchy][watchx] == 1){
                         counter++;
                     }
                 }
              }
              
              if(counter % 2 == 0){
                 next[i][j] = 0;
              }else{
                 next[i][j] = 1;
        }
      }
    }
    int[][] tmp = cells;
    cells = next;
    next = tmp;
  }
  
  
  void drawChip(){
    for(int i = 0; i < cells.length; i++){
      for(int j = 0; j < cells.length; j++){
        if(cells[i][j] == 0){
          fill(255);
        }else{
          fill(0);
        }
        rect(j * Const.CHIP,i * Const.CHIP, Const.CHIP, Const.CHIP);
      }
    }
  }
}
