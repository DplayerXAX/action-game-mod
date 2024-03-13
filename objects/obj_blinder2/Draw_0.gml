/// @description 在此处插入描述 
// 你可以在此编辑器中写入代码 


draw_self();
if(drawBlock){
	timer_draw++;
if(!doneCreate){
	text=instance_create_layer(x,y-20,"Effects",obj_textBlock);
	doneCreate=true;
}

if(timer_draw>room_speed*0.07){
	drawBlock=false;
	timer_draw=0;
	doneCreate=false;
	instance_destroy(text);
	}
}


draw_circle_color(1100,100,20,c_white,c_white,false);
draw_circle_color(1100,100,coolDown*6/room_speed,c_black,c_black,false);


