switch (state)
{
	case "move":
		#region move
		
		if(oInput.left)
		{
			move_and_collide(-4,0);
			image_xscale = -1;
			set_state_sprite(s_skeleton_run,0.5,0);
		}

		if(oInput.right)
		{
			move_and_collide(4,0);
			image_xscale = 1;
			set_state_sprite(s_skeleton_run,0.5,0);
		} 
		
		if  (!oInput.left) && (!oInput.right)
		{
			set_state_sprite(s_skeleton_idle, 0.3,0);
		}
		
		if(oInput.roll)
		{
			state = "roll";
		}
		
		if(oInput.attack)
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
		if(animation_end())
		{
			state = "move";
		}
		#endregion
		break;
	case "attack_one":
		#region attack_one
		set_state_sprite(s_skeleton_attack_one,0.6,0);
		
		if(animation_hit_frame(0))
		{
			
			create_hitbox(x,y,self, s_skeleton_attack_one_damage,4,4,5,image_xscale);
			
		}
		
		if(oInput.attack) and animation_hit_frame_range(2,4)
		{
			state = "attack_two";
		}
		
		if(animation_end())
		{
			state = "move";
		}
		
		#endregion
		break;
	case "attack_two":
		#region attack_two
		set_state_sprite(s_skeleton_attack_two,0.6,0);
		
		if(animation_hit_frame(1))
		{
			
			create_hitbox(x,y,self, s_skeleton_attack_two_damage,4,4,10,image_xscale);
			
		}
		
		
		if(oInput.attack) and animation_hit_frame_range(2,4)
		{
			state = "attack_three";
		}
		if(animation_end()){
			state = "move";
		}
		#endregion
		break;
	case "attack_three":
		#region attack_three
		if(animation_hit_frame(2))
		{
			
			create_hitbox(x,y,self, s_skeleton_attack_three_damage,8,4,10,image_xscale);
			
		}
		set_state_sprite(s_skeleton_attack_three,0.6,0);
		if(animation_end())
		{
			state = "move";
		}
		#endregion
	default:
		show_debug_message("State " + state + " does not exists.");
	break
}

	

x = max(x, 0 - sprite_xoffset / 2);
x = min(x, room_width - sprite_xoffset /2);