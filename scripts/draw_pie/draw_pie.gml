/// @desc draw_pie
/// @arg x
/// @arg y
/// @arg value
/// @arg max_value
/// @arg colour
/// @arg Radius
/// @arg alpha
/// @arg sprite

if (argument2 > 0)
{
	var i, len, tx, ty, val;
	
	var numberofsections = 120;
	var sectionsize = 360 / numberofsections;
	
	val = (argument2/argument3) * numberofsections;
	
	if (val > 1)
	{
		draw_set_colour(argument4);
		draw_set_alpha(argument6);
		
		draw_primitive_begin(pr_trianglefan);
		draw_vertex(argument0, argument1);
		
		for(i = 0; i <= val; i++)
		{
			len = (i * sectionsize) + 90; 
			tx = lengthdir_x(argument5, len);
			ty = lengthdir_y(argument5, len);
			draw_vertex(argument0 + tx, argument1 + ty);
		}
		draw_primitive_end();
		draw_sprite(argument7, 0, argument0, argument1);
	}
	draw_set_colour(c_white);
	draw_set_alpha(1);
}