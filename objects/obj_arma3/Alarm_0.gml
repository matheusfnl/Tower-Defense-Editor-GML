var camada = "inst_tiros"
var _x = x+4
var _y = y-12


if(noChao && distance_to_object(alvo) <= range)
{
	if(instance_exists(alvo))
	{
		var tiro1 = instance_create_layer(_x,_y-10,camada,obj_tiroArma3)
		tiro1.direction = point_direction(_x,_y,alvo.x,alvo.y)
		tiro1.speed = 1.85;
		tiros--;
	}
}

if(tiros > 0) alarm[0] = room_speed * 0.2;
else
{
	alarm[1] = 1 * room_speed
}

if(distance_to_object(obj_player) > range)
{
	tiros = 3;
}