

HP--;
audio_play_sound(scary_laugh,0,false);
if(HP>0){
	obj_cameraNow.shakeScreen=true;
	if(HP=2){
	instance_destroy(heart3);
	}else if(HP==1){
	instance_destroy(heart2);
	}
	
	x=irandom(1360)+3;
	y=irandom(762)+3;
	while(place_meeting(x,y,obj_wall)||place_meeting(x,y,obj_blinder2)){
	x=irandom(1360)+3;
	y=irandom(762)+3;
	
	}


}