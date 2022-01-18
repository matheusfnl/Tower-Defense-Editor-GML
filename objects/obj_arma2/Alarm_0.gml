podeAtirar = true
var camada = "inst_tiros"

if(noChao)
{
	var tiro1 = instance_create_layer(x+12,y-12,camada,obj_tiroArma2)
	tiro1.direction = 0
	tiro1.speed = 1.25;
	
	var tiro2 = instance_create_layer(x,y-20,camada,obj_tiroArma2)
	tiro2.direction = 90
	tiro2.speed = 1.25;
	
	var tiro3 = instance_create_layer(x-12,y-12,camada,obj_tiroArma2)
	tiro3.direction = 180
	tiro3.speed = 1.25;
	
	var tiro4 = instance_create_layer(x,y-10,camada,obj_tiroArma2)
	tiro4.direction = 270
	tiro4.speed = 1.25;
}