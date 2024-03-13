/// @description 在此处插入描述 
// 你可以在此编辑器中写入代码 








direction = point_direction(obj_blinder.x ,obj_blinder.y , mouse_x , mouse_y );
speed = 4.5 ;
image_angle = direction;
timer_effect=room_speed*1;
light=instance_create_layer(x,y,"light",obj_bulletLight);
light.image_angle=direction;

howWeMove*=0.2;