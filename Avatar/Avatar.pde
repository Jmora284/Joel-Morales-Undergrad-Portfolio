/************************************************************************************
  Author: Joel Morales 
  Creation Date: February 19, 2020
  Due Date: February 22, 2020
  Course: CSC120
  Professor Name: Professor Tranotti
  Assignment: 1
  Filename: Avatar.pde
  Purpose: To show that my avatar meets the required tasks and functions properly. 
**************************************************************************************/

//Assigning 'Avatar_x' to 50
  int Avatar_x = 50;
 
//Assigning 'Speed_x' to 2
  int Speed_x= 2;
 
//setting up background and size
void setup()
{
  size(1800,800);
}

//setting up loop for animation
void draw()
 {
  background (#5DDAFF);

//the color of the grass
  stroke(#080500);
  fill(#6FC91C);
  rect(0,400,1800,400);

//beginning background

//clouds
  noStroke();
  fill(#FFFFFF,220);

//left side clouds
  ellipse(150,100,200,100);
  ellipse(200,100,200,120);
  ellipse(280,100,200,100);

//middle clouds
  ellipse(600,280,200,100);
  ellipse(550,280,200,80);
  ellipse(650,280,200,80);

//right side clouds
  ellipse(1300,170,200,120);
  ellipse(1390,170,200,100);
  ellipse(1250,170,200,100);

//mushroom stem
  stroke(0);
  fill (#FFF708);
  rect(200,350,100,70);

//mushroom top
  fill(#AFCE36);
  arc(250,360,150,150,PI,TWO_PI);

//mushroom spores
  noStroke();
  fill (#C50CEA);
  ellipse(220,320,30,30);
  ellipse(250,330,10,10);
  ellipse(280,340,40,40);

//pink ward orb to see Avatar
  fill(#FC0A7C);
  ellipse(900,300,120,120);

//pink ward lifebar
  rect(750,100,50,5);
  rect(810,100,50,5);
  rect(870,100,50,5);
  rect(930,100,50,5);
  rect(990,100,50,5);

//outer eyeball
  noFill();
  stroke(#FC0A7C);
  ellipse(900,170,200,70);

//cornea of eyeball
  ellipse(900,170,50,50);

//base of ward
  fill(#484044);
  stroke(0);
  rect(875,360,50,150);
  rect(865,440,70,70);


//end of background


//Setting up movement for Avatar using pushMatrix,translate
  pushMatrix();
  translate(100,300);
  fill(#E5CE94);

//rope Avatar uses to set up his traps
  stroke(#FF0A0A);
  line(Avatar_x-60,120,100,100);

//Avatar body
  stroke(0);
  ellipse(Avatar_x,100,120,160);

//left arm 
  noStroke();
  ellipse(Avatar_x+70,70,80,30);

//right arm
  noStroke();
  ellipse(Avatar_x-65,85,30,60);

//scarf
  stroke(0);
  fill(#FC0000);
  ellipse(Avatar_x,55,130,50);

//head shape
  fill(#E5CE94);
  ellipse(Avatar_x,0,150,125);

//nose
  noStroke();
  fill(#B4843A);
  triangle(-10+Avatar_x,20,0+Avatar_x,30,10+Avatar_x,20);

//smile 
  fill(0);
  arc(-2+Avatar_x,35,80,30,0,3.14);

//using rect to make smile smaller
  fill(#E5CE94);
  noStroke();
  rect(Avatar_x-50,35,90,5);

//brown fur circle around eye area
  fill(#B4843A);
  noStroke();
  ellipse(Avatar_x-35,0,50,50);
  ellipse(Avatar_x+35,0,50,50);

//eyes
  fill(0);
  ellipse(Avatar_x-35,5,30,30);
  ellipse(Avatar_x+35,5,30,30);

//using ellipse to make eyes smaller
  fill(#B4843A);
  ellipse(Avatar_x-35,10,30,30);
  ellipse(Avatar_x+35,10,30,30);

//ears using the triangle primitive 
  stroke(0);
  fill(#E5CE94);
  triangle(-70+Avatar_x,-80,-50+Avatar_x,-20,10+Avatar_x,-60);
  triangle(70+Avatar_x,-80,50+Avatar_x,-10,10+Avatar_x,-60);

//Helmet
  stroke(0);
  fill(#097C58);
  arc(Avatar_x,-10,150,125,PI,TWO_PI);

//brim of helmet
  rect(Avatar_x-80,-20,160,10);

//goggle strap
  fill(#6C420E);
  rect(Avatar_x-60,-45,120,10);

//goggles
  fill(#FC0000);
  rect(Avatar_x+10,-50,40,20);
  rect(Avatar_x-50,-50,40,20);

//lenses for goggles
  fill(#00FFFD);
  rect(Avatar_x+15,-47.5,30,15);
  rect(Avatar_x-45,-47.7,30,15);

//pants
  stroke(#000105);
  fill(#6C420E);
  rect(Avatar_x-60,120,120,60);

//right hand
  fill(#097C58);
  rect(Avatar_x-80,100,30,30);

//left hand
  rect(Avatar_x+100,55,30,30);

//right boot
  fill(#097C58);
  stroke(0);
  rect(Avatar_x+15,180,40,30);

//ankle portion of the right boot
  noStroke();
  arc(Avatar_x+35,180,70,30,0,PI);

//left boot
  stroke(0);
  rect(Avatar_x-55,180,40,30);

//ankle portion of the left boot
  noStroke();
  arc(Avatar_x-35,180, 70, 30, 0, PI);

//using 'Speed_x' to make all instances of 'Avatar_x' variable to move to the right 2 frames per second. 
  Avatar_x=Avatar_x+Speed_x;

//using if statement to reset Avatar at 0 once he goes past the width of the border. 
  if(Avatar_x> width) {
  Avatar_x=0;
}

//closing the animation
  popMatrix();


//Beginning the foreground


//Stem of mushrooms
  stroke(0);
  fill (#FFF708);
  rect(100,685,100,70);
  rect(40,665,60,70);
  rect(210,665,100,70);

//Mushroom top
  fill(#AFCE36);
  arc(100,670,150,150,PI,TWO_PI);
  arc(260,670,150,150,PI,TWO_PI);
  arc(150,690,150,150,PI,TWO_PI);

//Mushroom spores
  noStroke();
  fill (#C50CEA);
  ellipse(120,660,30,30);
  ellipse(150,650,20,20);
  ellipse(75,630,30,30);
  ellipse(50,640,10,10);
  ellipse(270,640,40,40);
  ellipse(230,630,20,20);
  ellipse(190,670,25,25);

//stick to hold dummy up
  fill(#5D3F0F);
  stroke(0);
  rect(1425,550,50,200);

//Body of dummy
  stroke(#030000);
  fill(#CEAA17);
  rect(1350,400,200,200);
  rect(1300,350,300,150);

//head of dummy
  rect(1400,270,100,80);

//Bullseye of dummy, starting with outer black ring
  fill (#030200);
  ellipse(1450,420,125,125);

//white ring
  fill(#FFFCF0);
  ellipse(1450,420,75,75);

//black ring
  fill(#030200);
  ellipse(1450,420,50,50);

//red mark
  fill(#FF0000);
  ellipse(1450,420,25,25);

//end of foreground
}
