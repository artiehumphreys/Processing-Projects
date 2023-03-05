CP[] centroids = new CP[4];
CP[] points = new CP[150];

void setup(){
  size(800,800);
  
  for (int i = 0; i < centroids.length; i++){
    centroids[i] = new CP(true);
    centroids[i].show();
  }
  
  for (int i = 0; i < points.length; i++){
    points[i] = new CP(false);
    points[i].show();
  }
}

void draw(){
  println("break");
  background(200);
  for (int i = 0; i < points.length; i++){
    points[i].assignment(centroids);
  }
  
  for (int i = 0; i < centroids.length; i++){
    centroids[i].move();
    centroids[i].show();
  }
}