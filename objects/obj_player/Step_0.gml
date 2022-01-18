#region movimentação
var left, right, _velh, up, down, _velv;

left = keyboard_check(ord("A"));
right = keyboard_check(ord("D"));
up = keyboard_check(ord("W"));
down = keyboard_check(ord("S"));

_velh = (right - left) * vel;
_velv = (down - up) * vel;
velh = lerp(velh, _velh,0.15);
velv = lerp(velv, _velv,0.15);

x+=velh;
y+=velv;
#endregion
#region mudando sprites
if(velh > 0)
{
	//mudando o sprite para a direita
	image_xscale = -1
}
if(velh < 0)
{
	//mudando o sprite para a esquerda
	image_xscale = 1	
}
if(velv >= -0.25 && velv <= 0.25 && velh >= -0.25 && velh <= 0.25)
{
	//mudar o sprite para parado caso o player esteja parado
	sprite_index = spr_playerParado
}
else
{
	//mudar o sprite para andando caso o player se mova
	sprite_index = spr_playerAndando
}
#endregion

var apertarNum1 = keyboard_check(ord("1"))
var apertarMouseDir = mouse_check_button(mb_right)

if(apertarNum1 && estado = 0)estado = 1;
else if(apertarMouseDir && estado = 1) estado = 0

if(estado = 0)
{
	if(instance_exists(obj_grid)) instance_destroy(obj_grid)
}
else if(estado = 1)
{
	if(!instance_exists(obj_grid)) instance_create_layer(0,0,"inst_grid",obj_grid)
}