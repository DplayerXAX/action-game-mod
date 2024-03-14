/// @description 在此处插入描述 
// 你可以在此编辑器中写入代码 




HP--;
audio_play_sound(scary_laugh,0,false);
if(HP>=0){
	obj_cameraNow.shakeHarder=true;
	if(HP=2){
	instance_destroy(heart3);
	}else if(HP==1){
	instance_destroy(heart2);
	}else if(HP==0){
	instance_destroy(heart1);
	}
	if(HP>0){
		x=irandom(980)+210;
		y=irandom(680)+60;
		while(place_meeting(x,y,obj_blinder2)||place_meeting(x,y,obj_enemyPlus)||place_meeting(x,y,obj_wall)||place_meeting(x,y,obj_blinder2)){
		x=irandom(980)+210;
		y=irandom(680)+60;
		}
	}else {
	whoWin="blinder2";	
	}


}





