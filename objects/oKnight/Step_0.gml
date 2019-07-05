switch(state)
{
	case "chase":
		set_state_sprite(s_knight_walk, 0.4, 0);
		if not instance_exists(oSkeleton) exit; // EXIT SAI DE TODOS OS EVENTOS
		
		image_xscale = sign(oSkeleton.x - x); 
		if image_xscale == 0
		{
			image_xscale = 1;
		}
		
		var distance_to_player = point_distance(x,y,oSkeleton.x,oSkeleton.y);
		if distance_to_player > 42
		{
			
			move_and_collide(image_xscale,0);
			
		}
		
		break;	
	
		
	
}