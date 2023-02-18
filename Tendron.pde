public void setup(){
  size(500,500);  
  noLoop();
}
public void draw(){
  //translate(250,250);
  strokeWeight(1);
  background(#FCDEB0);
  Cluster test1 = new Cluster(50, 250,250);
  //face
  noStroke();
  fill(#F2B553);
  ellipse(250,250,250,250);
  
  //eyeballs
  fill(0,0,0);
  ellipse(200,220,50,50);
  ellipse(300,220,50,50);
  
  //eye highlights
  fill(255,255,255);
  ellipse(200,210,15,15);
  ellipse(300,210,15,15);

  //snout
  fill(#FFDDA5);
  ellipse(250,300,110,90);
    
  //mouth
  noFill();
  strokeWeight(2);
  stroke(0,0,0);
  arc(200,280,100,150,0,PI/4);
  arc(300,280,100,150,(3*PI)/4,PI);
  
  //whiskers-left
  line(250,285,170,300);
  line(250,285,170,280);
  line(250,285,170,260);
  //whiskers-right
  line(250,285,329,300);
  line(250,285,329,280);
  line(250,285,329,260);
  
  //nose
  fill(#644115);
  stroke(#644115);
  strokeWeight(10);
  strokeJoin(ROUND);
  triangle(225+12.5,270,250,290,275-12.5,270);
  strokeWeight(3);
}
public void mousePressed(){
  redraw();
}
