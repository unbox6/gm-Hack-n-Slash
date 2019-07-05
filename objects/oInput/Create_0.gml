right = keyboard_check(vk_right);
left = keyboard_check(vk_left);
roll = keyboard_check_pressed(vk_space);
attack = keyboard_check_pressed(ord("Z"));

keyboard_set_map(ord("J"), ord("Z"));
keyboard_set_map(ord("A"), vk_left);
keyboard_set_map(ord("D"), vk_right);
