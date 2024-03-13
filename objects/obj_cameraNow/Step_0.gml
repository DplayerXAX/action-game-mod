/// @description 在此处插入描述 
// 你可以在此编辑器中写入代码 


camera_set_view_pos(view_camera[0],x,y);

if(shakeScreen){
	if(!decideRandom){
	var num=irandom(10)+2;
	}
	camera_set_view_pos(view_camera[0],x+num,y+num);
	timer_shakeScreen--;
	if(timer_shakeScreen<0){
	camera_set_view_pos(view_camera[0],x,y);
	show_debug_message("shaking!");
	timer_shakeScreen=room_speed*0.1;
	shakeScreen=false;
	decideRandom=false;
	}

}
/*
if(blackBarExist){
	layer_sequence_x(endingSequence,x);
	layer_sequence_y(endingSequence,y);
	
}