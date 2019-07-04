
show_debug_message(state);
switch (state)
{
	case "move":
		#region move
		if(keyboard_check(vk_left))
		{
			move_and_collide(-4,0);
			image_xscale = -1;
			sprite_index = s_skeleton_run
			image_speed = 0.7
		}

		if(keyboard_check(vk_right))
		{
	
			move_and_collide(4,0);
			image_xscale = 1;
			sprite_index = s_skeleton_run
			
	
		} 

		if  (!keyboard_check(vk_left)) && (!keyboard_check(vk_right))
		{
			sprite_index = s_skeleton_idle
			image_speed = 0.9
		}
		if(keyboard_check_pressed(vk_space))
		{
			image_index = 0;
			state = "roll";
		}
		if(keyboard_check_pressed(ord("Z")))
		{
			image_index = 0;
			state = "attack_one";
		}
			
	#endregion
		break;
	case "roll":
		#region roll
		if(!place_meeting(x + 4 * image_xscale, y, oWall))
		{
			sprite_index = s_skeleton_roll;
			x += 4.5 * image_xscale;
			image_speed = 0.6;
		}
		#endregion
		break;
	case "attack_one":
		#region attack_one
		sprite_index = s_skeleton_attack_one;
		image_speed = 0.6;
	
		#endregion
		break;
	
}

	

x = max(x, 0 - sprite_xoffset / 2);
x = min(x, room_width - sprite_xoffset /2);