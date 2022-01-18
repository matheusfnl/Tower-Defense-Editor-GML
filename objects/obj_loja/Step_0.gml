if (position_meeting(mouse_x, mouse_y, obj_loja))
{
    x-=	4
}
else if(!position_meeting(mouse_x, mouse_y, obj_loja))
{
	x+=	4

}
if(x <= room_width) x = room_width
if(x >= room_width+64) x = room_width+64
