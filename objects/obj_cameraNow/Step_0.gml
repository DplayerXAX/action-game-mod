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

if(whoWin!=""){
	timer_result++;
	audio_stop_sound(dream_music);
	audio_stop_sound(stunned_sound);
	finalSplash=instance_create_layer(x,y,"UIPlus",obj_splash);


	
	draw_text(300,300,"what");
	if(!endPrint){
	if(whoWin=="blinder1"){
		layer_sequence_create("UIPlusPlus",500,280,blinder1Win);
		audio_play_sound(win_sound,0,true);
		endPrint=true;
		}
	else if(whoWin=="blinder2"){
		layer_sequence_create("UIPlusPlus",500,280,blinder2Win);
		endPrint=true;
		}
	
	}
	
	if(timer_result>room_speed*1&&keyboard_check(ord("R"))){
	room_goto(help);
	audio_stop_sound(win_sound);
	}
	
}
/*
if(blackBarExist){
	layer_sequence_x(endingSequence,x);
	layer_sequence_y(endingSequence,y);
	
}