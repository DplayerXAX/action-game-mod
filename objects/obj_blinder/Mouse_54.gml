/// @description 在此处插入描述 
// 你可以在此编辑器中写入代码 







if(place_meeting(x,y,obj_light)&&charging>=20){
	charging-=20;
	audio_play_sound(exchange_sound,0,false);
	x=irandom(1360)+3;
	y=irandom(762)+3;
	while(!place_meeting(x,y,obj_light)){
	x=irandom(1360)+3;
	y=irandom(762)+3;
	}
}


