// CONTROL SUNRISE --------------------------------------------------------------------------------
if (daytimer > sunrise && daytimer < (sunrise + risespeed))
{
	var rise = daytimer - sunrise;
	a = 1-(rise / risespeed);
}

// CONTROL SUNSET ---------------------------------------------------------------------------------
if (daytimer > sunset && daytimer < (sunset + setspeed))
{
	var set = daytimer - sunset;
	a = set / setspeed;
}

a = clamp(a, 0, 1);
