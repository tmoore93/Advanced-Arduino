PVector location;
PVector velocity;
PVector gravity;


void setup(){
  size(300, 300);
  background(255, 204, 0);
  location=new PVector(100,100);
  velocity=new PVector(1.5,2.1);
  gravity=new PVector(0,0.2);
}
void draw(){
  background(255, 204, 0);
  location.add(velocity);
  velocity.add(gravity);
  
  if (location.x < 0 || location.x > width){
    velocity.x*=-1;
  }
  if (location.y>height){
    velocity.y=velocity.y*-0.95;
    location.y=height;
  }
stroke(255);
strokeWeight(2);
fill(204, 102, 0);
ellipse(location.x,location.y,60,60);

}
