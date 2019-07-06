///@arg hitFrame

var frame = argument0;


// COMENTÁRIO IMPORTANTE:
//frame_range vai ser a image_speed ajustada pela proporção da speed da animação pela speed do game
// então se o game roda a 30 fps e o sprite a 15 a proporção vai ser 0.5
// portanto se a proporção for 0.5 o range do nosso sprite vai ser metade da image_speed
// como nem sempre o game vai rodar a 30 fps nós temos que fazer essa conta 

var frame_range = image_speed * sprite_get_speed(sprite_index) / game_get_speed(gamespeed_fps);

return image_index >= frame and image_index < frame + frame_range;