class CP{
  boolean centroid;
  PVector pos;
  color c;
  ArrayList<PVector> mypoints = new ArrayList<PVector>();
  CP cocentroid;
  CP(boolean cen){
    centroid = cen;
    pos = new PVector(random(0,width), random(0,height));
    c = color(random(50,255),random(50,255),random(50,255));
  }
  
  void show(){
    if (centroid == true){
      fill(230,100,240);
      rect(pos.x,pos.y, 30,30);
    }
    if (centroid == false){
      fill(0);
      ellipse(pos.x, pos.y, 5,5);
    }
  }
  
  void assignment(CP[] cens){
    float dis = 10000;
    for (int i = 0; i < cens.length; i++){
       if (dist(pos.x,pos.y,cens[i].pos.x, cens[i].pos.y) < dis){
         dis = dist(pos.x,pos.y,cens[i].pos.x, cens[i].pos.y);
         stroke(cens[i].c);
         fill(cens[i].c);
         ellipse(pos.x, pos.y, 5,5);
         cocentroid = cens[i];
         cens[i].mypoints.add(pos);
       }
    }
  }
  
  void move(){
    float xadv = 0;
    float yadv = 0;
    for (int i = 0; i < mypoints.size(); i++){
      xadv += mypoints.get(i).x;
      yadv += mypoints.get(i).y;
    }
    xadv = xadv/mypoints.size();
    yadv = yadv/mypoints.size();
    
    pos = new PVector(xadv, yadv);
    mypoints.clear();
  }
  
  
}
