arrastarArma()

var _alvo = instance_nearest(x,y,obj_player);

if(noChao && distance_to_object(obj_player) <= range)
{
	if(podeAtirar)
	{
		podeAtirar = false;
		alarm[0] = 1
	}
	alvo = _alvo;

}

