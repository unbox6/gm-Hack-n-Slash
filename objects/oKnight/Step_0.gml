switch(state)
{
	case "chase":
	#region chase
	
		set_state_sprite(s_knight_walk, 0.4, 0);
		if not instance_exists(oSkeleton) exit; // EXIT SAI DE TODOS OS EVENTOS
		
		image_xscale = sign(oSkeleton.x - x); 
		if image_xscale == 0
		{
			image_xscale = 1;
		}
		
		var distance_to_player = point_distance(x,y,oSkeleton.x,oSkeleton.y);
		if distance_to_player <= attack_range
		{
			
			state = "attack";
			
		}
		
		else
		{
			move_and_collide(image_xscale * chase_speed,0);
		}

		#endregion
		break;	
	
			
	case "attack":
		#region attack
		set_state_sprite(s_knight_attack, 0.4, 0);
		
		if(animation_hit_frame(4))
		{
			
			create_hitbox(x,y,self, s_skeleton_attack_one_damage,4,4,1,image_xscale);
		
		}
		
		if(animation_end())
		{
			state = "chase";
		}
		#endregion
		break;
	
	#region knockback 
	case "knockback":
	set_state_sprite(s_knight_hitstun,0,0);
	move_and_collide(knockback_speed,0);
	knockback_speed = approach(knockback_speed,0,0.5);
	image_xscale = -sign(knockback_speed);
	if knockback_speed == 0
	{
		knockback_speed = 0;
		state = "chase";
	}
	break;
	#endregion
	
	default:
		show_debug_message("State " + state + " does not exists.");
	break;
}