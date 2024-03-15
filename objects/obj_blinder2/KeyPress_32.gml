/// @description 在此处插入描述 
// 你可以在此编辑器中写入代码 


if(abilityPower>0&&coolDown=0){
	audio_play_sound(dashing_sound,0,false);
	dashEffect=instance_create_layer(x,y,"Instances",obj_dash);
	dashEffect.image_xscale=sign(obj_blinder2.image_xscale)*-0.3;
	dashEffect.image_yscale=0.3;
isAccer=true;
abilityPower--;
coolDown=room_speed*3;
}

