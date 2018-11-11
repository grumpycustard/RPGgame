// CONTROL SUNRISE --------------------------------------------------------------------------------
if (daytimer > sunrise && daytimer < (sunrise + risespeed))
{
	var rise = daytimer - sunrise;
	a = 1-(rise / risespeed);
}

if (daytimer > (sunrise + risespeed) && daytimer < (sunset))
{
	a = 0;
}

// CONTROL SUNSET ---------------------------------------------------------------------------------
if (daytimer > sunset && daytimer < (sunset + setspeed))
{
	var set = daytimer - sunset;
	a = set / setspeed;
}

if (daytimer > (sunset + setspeed) || daytimer < (sunrise))
{
	a = 1;
}

a = clamp(a, 0, 1);
