// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function arrastarArma()
{
	var apertarR = keyboard_check_pressed(ord("R"));
	var mouseEmCima = position_meeting(mouse_x, mouse_y, self)
	var apertarMouseEsq = mouse_check_button_pressed(mb_left)
	var pressionarMouseEsq = mouse_check_button(mb_left)
	var distancia = 85
	var apertarMouseDir = mouse_check_button(mb_right)
	
	//começo
	if(mouseEmCima && apertarMouseEsq && obj_player.estado = 1 && distance_to_object(obj_player) <= distancia && self.preco / 2 <= obj_player.dinheiro) 
	{
		self.noMouse = true;
		//self.modoFantasma = true;
	}
	
	if(self.noMouse)
	{
		self.noChao = false;
		x = floor(mouse_x / 16) * 16;
		y = floor(mouse_y / 16) * 16 + 8;
		
		if(apertarR && distance_to_object(obj_player) <= distancia) self.rotacao++;
		//limitando a rotacao
		if(self.rotacao > 4) self.rotacao = 1;
		
		if(!pressionarMouseEsq || obj_player.estado = 0) 
		{
			if(!apertarMouseDir)
			{
				if(distance_to_object(obj_player) <= distancia && !place_meeting(x,y,obj_arma))
				{
					self.noMouse = false;
					self.noChao = true;
					self.podeAtirar = true;
					//self.modoFantasma = false;
				
					self.xAntigo = x;
					self.yAntigo = y;
					
					obj_player.dinheiro -= self.preco / 2;
				}
				else
				{
					self.noMouse = false;
					self.noChao = true;
					self.podeAtirar = true;
					x = self.xAntigo;
					y = self.yAntigo;
				}
			}
			else
			{
				self.noMouse = false;
				self.noChao = true;
				self.podeAtirar = true;
				x = self.xAntigo;
				y = self.yAntigo;
			}
		}
	}
	
	if(obj_player.estado = 1 && distance_to_object(obj_player) <= distancia)
	{
		if(obj_player.dinheiro >= self.preco / 2)
		{
			self.image_blend = c_white
		}
		else
		{
			self.image_blend = make_colour_rgb(255, 105, 105);
		}
	}
	else if(obj_player.estado = 1 && distance_to_object(obj_player) > distancia)
	{
		self.image_blend = make_colour_rgb(255, 105, 105);
	}
	if(obj_player.estado = 0) self.image_blend = c_white;
	if(place_meeting(x,y,obj_arma)) self.image_blend = make_colour_rgb(255, 105, 105);
	
}