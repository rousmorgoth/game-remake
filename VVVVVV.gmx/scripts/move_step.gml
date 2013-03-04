{
 var i,move_check;
 // Posunutí x
 for (i = abs(argument0); i > 0; i -= 1)
 {
  if (i < 0) {i = 0;}
  move_check = sign(argument0)*i;
  if !(place_meeting(x+move_check,y,par_wall))
  {
   x += move_check;
   break;
  }
  if !(place_meeting(x+move_check,y-i,par_wall))
  {
   y -= i/2;
  }
  if !(place_meeting(x+move_check,y+i,par_wall))
  {
   y += i/2;
  }  
 }
 // Posunutí y
 for (i = abs(argument1); i > 0; i -= 1)
 {
  if (i < 0) {i = 0;}
  move_check = sign(argument1)*i;
  if !(place_meeting(x,y+move_check,par_wall))
  {
   y += move_check;
   break;
  }
  if !(place_meeting(x-i,y+move_check,par_wall))
  {
   x -= i/2;
  }
  if !(place_meeting(x+i,y+move_check,par_wall))
  {
   x += i/2;
  }
 }
}
