if (showinv) exit;

inputs_scr();

if(action)
{
	if (inv_add_scr(other.image_index) == 1)
	{
		instance_destroy(other);
	}
}