private double fractionLength = .8; 
private int smallestBranch = 10; 
private double branchAngle = .2;  

private int a = 10;
private int b = 7;
private int c = 3;
private int d = 1;

public void setup() 
{   
	size(640,480);    
	background(0, 0, 0);
} 
public void draw() 
{     
	stroke(0,255,0);   
	line(320,480,320,380);
	drawBranches(320,380,100,3*Math.PI/2, 20); 
	 //will add later 
} 
public void drawBranches(int x,int y, double branchLength, double angle, int d) 
{   
double angle1 = angle + branchAngle;
double angle2 = angle - branchAngle;

branchLength = branchLength * fractionLength;

int endX1 = (int)(branchLength*Math.cos(angle1) + x);
int endY1 = (int)(branchLength*Math.sin(angle1) + y);
int endX2 = (int)(branchLength*Math.cos(angle2) + x);
int endY2 = (int)(branchLength*Math.sin(angle2) + y);

stroke(a * d, b * d, c * d);
line(x,y,endX1,endY1);
line(x,y,endX1,endY1);

if(branchLength > smallestBranch){
	drawBranches(endX1, endY1, branchLength, angle1, d + 10);
	drawBranches(endX1, endY1, branchLength, angle2, d + 12);
}
System.out.println(d);
	//your code here    
} 