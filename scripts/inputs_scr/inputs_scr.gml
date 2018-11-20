right = keyboard_check(ord("D"));
up = keyboard_check(ord("W"));
left = keyboard_check(ord("A"));
down = keyboard_check(ord("S"));

oneright = keyboard_check_pressed(ord("D"));
oneup = keyboard_check_pressed(ord("W"));
oneleft = keyboard_check_pressed(ord("A"));
onedown = keyboard_check_pressed(ord("S"));

run = keyboard_check(vk_shift);
action = keyboard_check_pressed(vk_space);
attack = mouse_check_button_pressed(mb_left);
drop = keyboard_check_pressed(ord("F")) || mouse_check_button_pressed(mb_right);
use = keyboard_check_pressed(ord("E")) || mouse_check_button_pressed(mb_middle);
toggle = keyboard_check_pressed(ord("Q"));
reload = keyboard_check_pressed(ord("R"));
