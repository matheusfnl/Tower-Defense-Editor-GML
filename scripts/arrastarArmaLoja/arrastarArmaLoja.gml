// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function arrastarArmaLoja()
{
	var apertarR = keyboard_check_pressed(ord("R"));
	var mouseEmCima = position_meeting(mouse_x, mouse_y, self)
	var apertarMouseEsq = mouse_check_button_pressed(mb_left)
	var pressionarMouseEsq = mouse_check_button(mb_left)
	var distancia = 85
	var apertarMouseDir = mouse_check_button(mb_right)
	
	///caso o objeto esteja encostando na loja e não esteja no mouse, naLoja é verdadeiro
	if(place_meeting(x,y,obj_loja) && !self.noMouse) self.naLoja = true;
	else if(self.noMouse)
	{
		self.naLoja = false;
	}
	
	if(mouseEmCima && apertarMouseEsq && naLoja = true && obj_player.dinheiro >= self.preco) 
	{
		obj_player.estado = 1
		self.naLoja = false;
		self.noMouse = true;
		var itemLoja = instance_create_layer(x,y,"inst_lojaItems",self.euObj)
		itemLoja.naLoja = true;
	}
	
	if(self.noMouse)
	{
		self.noChao = false;
		x = floor(mouse_x / 16) * 16;
		y = floor(mouse_y / 16) * 16 + 8;
		
		if(apertarR) self.rotacao++;
		//limitando a rotacao
		if(self.rotacao > 4) self.rotacao = 1;
		
		if(!pressionarMouseEsq || obj_player.estado = 0) 
		{
			if(!apertarMouseDir)
			{
				if(distance_to_object(obj_player) <= distancia && !place_meeting(x,y,obj_arma))
				{
					obj_player.estado = 0;
					var objCriado = instance_create_layer(x,y,"inst_armas",self.objCriar)
					objCriado.image_index = self.image_index
					objCriado.rotacao = self.rotacao;
					objCriado.xAntigo = x;
					objCriado.yAntigo = y;
					instance_destroy();
				}
				else //destruindo caso esteja fora do range
				{
					instance_destroy()
				}
			}
			else //destruindo caso aperte o botão direito
			{
				instance_destroy()
			}
		}
	}
	
	if(!self.naLoja)
	{
		if(obj_player.estado = 1 && distance_to_object(obj_player) <= distancia)
		{
			self.image_blend = c_white
		}
		else if(obj_player.estado = 1 && distance_to_object(obj_player) > distancia)
		{
			self.image_blend = make_colour_rgb(255, 105, 105);
		}
		if(obj_player.estado = 0) self.image_blend = c_white;
		if(place_meeting(x,y,obj_arma)) self.image_blend = make_colour_rgb(255, 105, 105);
	}
	else
	{
		if(obj_player.dinheiro >= self.preco) self.image_alpha = 1
		else self.image_alpha = 0.5
	}
}