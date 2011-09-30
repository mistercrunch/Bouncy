
class Ball
{
  Vect2d Pos;
  Vect2d Speed;
  float BallSize;
  color c;
  
  Ball(int x1,int y1,int x2,int y2, color ball_c){
    Pos = new Vect2d(x1,y1);
    Speed = new Vect2d(x2,y2);
    c = ball_c;
    BallSize = 25;
  }
  void Calc()
  {
    Pos.Add(Speed);
    
    if(Pos.x<0 || Pos.x>width)
      Speed.x=-Speed.x;
    if(Pos.y<0 || Pos.y>height)
      Speed.y=-Speed.y;
  }
  void Display(){
    fill(c);
    stroke(c);
    ellipse(Pos.x, Pos.y, BallSize,BallSize);
  }
};

