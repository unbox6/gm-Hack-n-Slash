
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
			set_state_sprite(s_skeleton_idle, 0.9,0);
		}
		if(keyboard_check_pressed(vk_space))
		{
			state = "roll";
		}
		if(keyboard_check_pressed(ord("Z")))
		{
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
		if(keyboard_check_pressed(ord("Z"))) and animation_hit_frame_range(2,4)
		{
			state = "attack_three";
		}
		#endregion
		break;
	case "attack_three":
		#region attack_three
		set_state_sprite(s_skeleton_attack_three,0.6,0);
		#endregion
}

	

x = max(x, 0 - sprite_xoffset / 2);
x = min(x, room_width - sprite_xoffset /2);