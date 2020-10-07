float angle = 1;
PImage img;
PShape hand;
PImage coding;


void setup() {
  size(1920, 1080, P3D);
  background(0);
  hand = loadShape("Hand.obj");

}


void draw()
{
  background(0);

  img = loadImage("coding.jpg");
  imageMode(CENTER);

  image(img, 960, 540, 700, 350);


  noFill();
  stroke(255);
  translate(width/2, height/2, 0); 


  pushMatrix();                
  translate(700, -350, 0);      
  rotateY(radians(angle));
  fill(random(0, 255), random(0, 255), random(0, 255));
  sphere(100);       
  popMatrix();                
  

  

  pushMatrix();                
  translate(-700, -350, 0);     
  rotateX(radians(mouseX));
  rotateY(radians(mouseY));
  rotateZ(radians(angle));
  scale(2, 1, 1);
  stroke(0);
  fill(255);
  box(100);               
  popMatrix();

  pushMatrix();                
  translate(-700, 350, 0); 
  rotateY(radians(angle));
  beginShape(TRIANGLES);
  scale(1,1,1);
 
    fill(255,255,0);
    vertex(0, 0, 100);
    fill(255,125,0);
    vertex(-100, 100, 0);
    vertex(100, 100, 0);
 
    fill(255,255,0);
    vertex(0, 0, 100);
    fill(255,125,0);
    vertex(100, 100, 0);
    vertex(100, -100, 0);
 
    fill(255,255,0);
    vertex(0, 0, 100);
    fill(255,125,0);
    vertex(100, -100, 0);
    vertex(-100, 100, 0);
 
    vertex(-100, 100, 0);
    vertex(100, 100, 0);
    vertex(100, -100, 0);
 
  endShape();
  popMatrix();

  pushMatrix();
  translate(700, 350, 0);
  rotateX(radians(angle));
  shape(hand);
  popMatrix();
  hand.setFill(color(255, 0, 0));
  angle = angle + 5;
}
