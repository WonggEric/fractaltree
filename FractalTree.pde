float angle = PI /2;
float branchAngle = PI/5;
float fractionLength = 0.7;
float smallestBranch = 16;
int i = 500;
int j = 900;

void setup() {
  size(1000, 1000);
  background(0);
  noLoop();
}

void draw() {
  translate(i, j);
  strokeWeight(5);
  drawBranches(0, 0, 250, angle);
}

void drawBranches(float x, float y, float branchLength, float angle) {
  float endX = x + branchLength * cos(angle);
  float endY = y - branchLength * sin(angle);
  stroke(102,67,13);
  line(x, y, endX, endY);

  if (smallestBranch>=branchLength) {
    return;
  } else {
    float angle1 = angle + branchAngle;
    float angle2 = angle - branchAngle;
    float newBranchLength = branchLength * fractionLength;
    drawBranches(endX, endY, newBranchLength, angle1);
    drawBranches(endX, endY, newBranchLength, angle2);
    fill(42,100,23,100);
    stroke(42,100,23);
    ellipse(endX,endY,37,37);
  }
}


