if(keyboard_check(vk_left) && !place_meeting(x - 4, y, oWall))
{
	x -= 4;
	image_xscale = -1;
	sprite_index = s_skeleton_run
	image_speed = 0.7
}

if(keyboard_check(vk_right) && !place_meeting(x + 4,y,oWall))
{
	
	x += 4;	
	image_xscale = 1;
	sprite_index = s_skeleton_run
	
	
} 

if  (!keyboard_check(vk_left)) && (!keyboard_check(vk_right))
{
	sprite_index = s_skeleton_idle
	image_speed = 0.9
}
	

x = max(x, 0 - sprite_xoffset / 2);
x = min(x, room_width - sprite_xoffset /2);