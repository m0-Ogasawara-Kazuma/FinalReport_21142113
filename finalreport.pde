import g4p_controls.*;
GSlider2D slider;

float angle=0.0;
float angleDirection=1;
float speed= 0.05;
void setup(){
  size(1000,1000,JAVA2D);
  slider= new GSlider2D(this,10,10, 460,300);
  background(204);
}
void draw(){
pushMatrix();
translate(600, 600); 
rotate(angle*slider.getValueXF());
strokeWeight(0);
line(0, 0, 150, 0);
translate(150, 0); 
rotate(angle*slider.getValueYF());
strokeWeight(0);
line(0, 0, 150, 0);
translate(150, 0); 
strokeWeight(1);
ellipse(0,0,10,10);
fill(255,0,0);
popMatrix();
println(slider.getValueXF()+""+slider.getValueYF());
angle += speed * angleDirection;
}
