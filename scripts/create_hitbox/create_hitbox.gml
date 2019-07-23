///@arg x
///@arg y
///@arg creator
///@arg sprite
///@arg knockback
///@arg lifespan
///@arg damage
///@arg xscale

var position_x = argument0;
var position_y = argument1;
var creator = argument2;
var sprite = argument3;
var knockback = argument4;
var lifespan = argument5;
var damage = argument6;
var _xscale = argument7;


var hitbox = instance_create_layer(position_x, position_y,"Instances",oHitbox);
hitbox.sprite_index = sprite;
hitbox.creator = creator;
hitbox.knockback = knockback;
hitbox.alarm[0] = lifespan;
hitbox.damage = damage;
hitbox.image_xscale = _xscale;
hitbox.image_blend = c_red;