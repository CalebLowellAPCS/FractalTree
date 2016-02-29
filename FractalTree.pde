private double fractionLength = .8; 
private int smallestBranch = 10; 
private double branchAngle = .2;  
private double gordin = angle + branchAngle;
private double cain = angle - branchAngle;
int endX1 = (int)(branchLength*Math.cos(angle1) + x);
int endY1 = (int)(branchLength*Math.sin(angle1) + y);
public void setup() 
{   
	size(640,480);    
	noLoop(); 
} 
public void draw() 
{   
	background(0);   
	stroke(0,255,0);   
	line(320,480,320,380);   
	//drawBranches(??,??,??,??);  //will add later 
} 
public void drawBranches(int x,int y, double branchLength, double angle) 
{   
	//your code here    
} 
