class Vect2d
{
  float x,y;
  
  Vect2d(float _x, float _y)
  {
    x = _x;
    y = _y;
  }
  
  Vect2d(float Range)
  {
    x = random(Range);
    y = random(Range);
  }
  
  void Add(Vect2d _v)
  {
    x+=_v.x;
    y+=_v.y;
  }
  Vect2d Sub(Vect2d v)
  {
    return new Vect2d(x-v.x, y-v.y);
  }
  
  void Minus(Vect2d _v)
  {
    x-=_v.x;
    y-=_v.y;
  }
  void Div(float divider)
  {
    x/=divider;
    y/=divider;
  }
  void Match(Vect2d v)
  {
    x = v.x;
    y = v.y;
  }
  Vect2d Clone()
  {
    return new Vect2d(x,y);
  }
  float Distance(Vect2d v)
  {
    return pow(pow(x-v.x, 2)+pow(y-v.y,2),0.5);
  }

  float Distance()
  {
    return pow(pow(x, 2)+pow(y,2),0.5);
  }
  void Invert()
  {
    x=-x;
    y=-y;
  }
};
