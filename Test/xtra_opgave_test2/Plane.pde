class Plane{

PImage planeSprite;
PVector location = new PVector();
PVector acceleration = new PVector();
PVector velocity = new PVector();
int topSpeed = 10;

Plane(int x,int y){
location.set(x,y);

}


void loadImages(){
planeSprite = loadImage("plane.png");
planeSprite.resize(planeSprite.width/4,planeSprite.height/4);

}

void display(){
float angle = atan2(velocity.y,velocity.x);
pushMatrix();
  imageMode(CENTER);
  translate(location.x,location.y);
  rotate(angle+PI);
image(planeSprite,0,0);
popMatrix();
}

void move(){
  PVector mouse = new PVector(mouseX,mouseY);
  PVector direction = PVector.sub(mouse,location);
  direction.normalize();
  direction.mult(0.5);
  
  acceleration = direction;
  
  velocity.sub(acceleration);
  velocity.limit(topSpeed);
  location.add(velocity);
  location.x =constrain(location.x,100,900);
location.y=constrain(location.y,50,950);
println(location.x);
}


}
