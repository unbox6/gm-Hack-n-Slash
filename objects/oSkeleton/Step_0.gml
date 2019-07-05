
show_debug_message(state);
switch (state)
{
	case "move":
		#region move
		if(keyboard_check(vk_left))
		{
			move_and_collide(-4,0);
			image_xscale = -1;
			set_state_sprite(s_skeleton_run,0.7,0);
		}

		if(keyboard_check(vk_right))
		{
	
			move_and_collide(4,0);
			image_xscale = 1;
			set_state_sprite(s_skeleton_run,0.7,0);
			
	
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
			set_state_sprite(s_skeleton_roll,0.5,0);
			x += 4.5 * image_xscale;
		}
		#endregion
		break;
	case "attack_one":
		#region attack_one
		set_state_sprite(s_skeleton_attack_one,0.6,0);
		if(keyboard_check_pressed(ord("Z"))) and animation_hit_frame_range(2,4)
		{
			state = "attack_two";
		}
		#endregion
		break;
	case "attack_two":
		#region attack_two
		set_state_sprite(s_skeleton_attack_two,0.6,0);
		#endregion
		break;
}

	

x = max(x, 0 - sprite_xoffset / 2);
x = min(x, room_width - sprite_xoffset /2);