// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function screenshake(_shake)
{
	var _screenshake = instance_create_layer(0,0,layer,obj_screenshake)
	_screenshake.shake = _shake
}