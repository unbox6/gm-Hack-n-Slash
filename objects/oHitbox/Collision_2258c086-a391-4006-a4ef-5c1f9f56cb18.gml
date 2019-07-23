if(creator == noone or creator == other or ds_list_find_index(hit_objects, other) != -1)
{
	exit;
}
else{
	ds_list_add(hit_objects,other);
	other.hp -= damage;
	other.state = "knockback";
	other.knockback_speed = knockback * image_xscale;
	show_debug_message(other.hp);
}


// instance_destroy(other); também funciona
