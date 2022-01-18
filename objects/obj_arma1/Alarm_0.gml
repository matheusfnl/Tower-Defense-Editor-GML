podeAtirar = true

var camada = "inst_tiros"
var _x, _y;

#region rotacao
if(rotacao = 1)
{
	_x = x;
	_y = y;
}
else if(rotacao = 2)
{
	_x = x-12;
	_y = y;
}
else if(rotacao = 3)
{
	_x = x;
	_y = y-8;
}
else if(rotacao = 4)
{
	_x = x+12;
	_y = y;
}
#endregion

if(noChao)
{
	var tiro = instance_create_layer(_x,_y-11,camada,obj_tiroArma1)
	tiro.direction = 360 - (90 * rotacao);
	tiro.speed = 1;
}