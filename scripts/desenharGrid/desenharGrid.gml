// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function desenharGrid(){
	var largura = 1
	
	draw_set_color(c_grey)
	draw_set_alpha(0.5)
	for(var i = 0; i < room_width; i+=16)
	{
		draw_line_width(i,0,i,room_height,largura)
	}
		for(var i = 8; i < room_height; i+=16)
	{
		draw_line_width(0,i,room_width,i,largura)
	}
	draw_set_color(c_white)
	draw_set_alpha(1)
}