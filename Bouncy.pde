boolean was_mouse_pressed =false;

LinkedList Balls = new LinkedList();
int first_mouse_x = 0;
int first_mouse_y = 0;
int click_millis = 0;
color current_color = color(0);

void setup(){
  size(320,480, P2D);
  frameRate(60);
  colorMode(HSB,1);
}

void draw()
{
  //println(frameRate);
  background(0);
  if(mousePressed){
    if(!was_mouse_pressed)
    {
      first_mouse_x = mouseX;
      first_mouse_y = mouseY;
      click_millis = millis();
      current_color = color(random(0.2)+0.56,1,random(0.4)+0.6);
      fill(current_color);
      stroke(current_color);
    }
    fill(current_color);
    stroke(current_color);
    ellipse(mouseX, mouseY, 50,50);
    was_mouse_pressed = true;
  }
  else
  {
    if(was_mouse_pressed){
      float divider = (millis() - click_millis)/30;
      Balls.add(new Ball(mouseX, mouseY, (int)((mouseX-first_mouse_x)/divider), (int)((mouseY-first_mouse_y)/divider), current_color));  
    }
    was_mouse_pressed = false;
  }
  Iterator it = Balls.listIterator(); 
  while ( it.hasNext() ) 
  {
    Ball b =(Ball)it.next();
    b.Calc();
    b.Display();
  }
  
}

