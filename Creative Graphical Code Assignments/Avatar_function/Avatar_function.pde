/************************************************************************************
  Author: Joel Morales 
  Creation Date: March 20, 2020
  Due Date: March 28, 2020
  Course: CSC120
  Professor Name: Professor Tranotti
  Assignment: 2
  Filename: Avatar_function.pde
  Purpose: To show that my avatar meets the required tasks and functions properly. 
**************************************************************************************/

//Assigning 'Avatar_x' to 50
  int Avatar_x = 50;
 
 //Assigning "Avatar_Global_x" as a global variable 'x' axis
  int Avatar_Global_x = 80;
   
//Assigning 'Avatar_Global_y' as a global variable 'y' axis
  int Avatar_Global_y = 20;
 
//Assigning 'Avatar_large_x' to the large avatar's 'x' axis
  int Avatar_large_x = 30;
  
//Assigning 'Avatar_large_y' to the large avatar's 'y' axis
  int Avatar_large_y= -400;
   

void setup() 
{
 size(1800,800);
}

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


/*The first arguement in the function call below is for the x axis location.
The second arguement in the function call below is for the y axis location
The third argument in the function call below is for determining the scale of the avatar*/


//Making little avatar using function call with global variables, using 'size' to scale avatar to .5
  Avatar(Avatar_Global_x,Avatar_Global_y,.5);

//Making medium avatar using function call with global variables, using 'size' to scale avatar to 1.5
  Avatar(Avatar_Global_x-300, Avatar_Global_y,1.5);
   
//Making large avatar using function call with the Avatar_large_x & Avatar_large_y variables as its 'x' & 'y' axis, using 'size' to scale avatar to 2
  Avatar(Avatar_large_x+40, Avatar_large_y,2);
  
  
/*End of function call*/


//Making both little and medium avatar travel at 10 pixels a second on their 'x' axis
  Avatar_Global_x = Avatar_Global_x +10;

//Making large avatar travel at 20 pixels a second on its 'x' axis
  Avatar_large_x = Avatar_large_x+20;

/*Using for loop for Avatar_Global_y. This loop will make little & medium avatar to reset at 0 on the 'y' axis when they go past border width.
This loop will also make them travel at 30 pixels a second downward on the 'y' axis.*/
  for(Avatar_Global_y=Avatar_Global_y+30; Avatar_Global_y > width; Avatar_Global_y=0)

//Both small & medium avatar will reset at 0 on the 'x' axis when they go past border width
  if(Avatar_Global_x > width){
    Avatar_Global_x=0;
} 

//Large avatar will reset to 0 on the 'x' axis when it goes past the border width
  if(Avatar_large_x > width){
    Avatar_large_x=0;
    
//Every reset to 0 by large avatar's 'x' axis will cause large avatar to reset at 100 pixels downward on its 'y' axis
   Avatar_large_y = Avatar_large_y+100;
}

/*Large avatar will continue to go downward until it reaches 1300 on the border height.
Once large avatar hits 1300, large avatar will reset at -1700 0n the 'y' axis*/
  if(Avatar_large_y > height-500){
    Avatar_large_y=Avatar_large_y-1300;
  }


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
 


/*************************************************************************/
/*                                                                       */
/*  Function name: Avatar                                                */
/*  Description: Creates a copy of my avatar at different sizes          */
/*  Parameters:  int x_loc - the x axis location for the translate       */
/*               int y_loc - the y axis location for the translate       */
/*               size - the value used to scale the avatar.              */
/*  Return Value: None                                                   */
/*                                                                       */
/*************************************************************************/



void Avatar ( int x_loc, int y_loc,float size) 
{
  
  pushMatrix();
  translate(x_loc,y_loc);
  scale(size);
  
//using translate for avatar's starting position
  translate(100,300);
  fill(#E5CE94);

//rope Avatar uses to set up his traps
  stroke(#FF0A0A);
  line(Avatar_Global_x-10000,500,100,100);

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

popMatrix();
}
