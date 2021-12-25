import peasy.*;

PeasyCam cam;
void setup(){
  size(600, 600, P3D);
  cam = new PeasyCam(this, 500);

}

void draw(){
  background(0);
  fill(255);
  lights();
  //translate(width/2, height/2);
  sphere(300);
  
  float r = 20;
  int total = 100;
  
  for (int i = 0; i < total; i++){
    float lon = map(i, 0 , total, -PI, PI);
    
    for (int j = 0; j < total; j++){
      float lat = map(j, 0, total, -HALF_PI, HALF_PI);
      float x = r * sin(lon) * cos(lat);
      float y = r = sin(lon) * sin(lat);
      float z = r * cos(lon);
      
      //blue stroke
      stroke(44, 33, 123);
      
      //red stroke
      //stroke(133, 22, 44);
      //strokeWeight(4);
      point(x, y, z);
    }
 
  }

}
