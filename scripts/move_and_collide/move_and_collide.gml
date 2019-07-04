///@arg xspeed
///@arg yspeed

if not place_meeting(x + argument0, y, oWall)
{
	x += argument0;
}

if not place_meeting(x, y+ argument1, oWall)
{
	y += argument1;
}