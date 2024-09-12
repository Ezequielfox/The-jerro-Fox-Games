 
 
 #region //varificar si esta cayendo spr
 if speed >0
 {
	 fall = true;
 }	 
 else
  {
	fall = false;
  } 
  if vspeed < 0
   {
	 up = true;
   }
   else 
    {
		up = false
	}
 
 #endregion
 

#region //gravedead
if place_free(x,y+1)
{
	gravity=1;
}
else 
{
	gravity=0;
}

if vspeed >= 20 {vspeed = 20;}//limitar la velocidad vertical
#endregion

#region //Movimientos y saltos
var Der = keyboard_check(vk_right);
var Izq = keyboard_check(vk_left);
var S = keyboard_check_pressed(vk_up);

if S && !place_free(x,y+1)//Salto
{
	sprite_index = spr_foxfump;
	vspeed = -salto;
}

if Der && place_free(x+v, y)
{
	x += v;//Moverlo
	if  fall == true
			sprite_index = spr_foxfall;
	  else 
	   if up
	   sprite_index = spr_foxfump;
	   else 
	   sprite_index = spr_fox_idle_sword;
	
	sprite_index = spr_fox_walk_sword;
	image_speed = 1;
	image_xscale = 4;
}

if Izq && place_free(x-v, y)
{
	x -=v;
	sprite_index = spr_fox_walk_sword;
	image_speed = 1;
	image_xscale = -4;
}


#endregion

#region//Spr correspondiente
if !keyboard_key
 {
	 if  fall == true
			sprite_index = spr_foxfall;
	  else 
	   if up
	   sprite_index = spr_foxfump;
	   else 
	   sprite_index = spr_fox_idle_sword;
	   
	   image_speed = 1.5;
	   //image_index =0;
}
#endregion