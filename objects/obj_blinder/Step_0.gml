/// @description 在此处插入描述 
// 你可以在此编辑器中写入代码 

playerDirection = point_direction(obj_blinder.x ,obj_blinder.y , mouse_x , mouse_y );
var _keep_x=x;
var _keep_y=y;
/*
var keepCamera_x=obj_cameraNow.x;
var keepCamera_y=obj_cameraNow.y;
*/
if(keyboard_check(vk_up)){

y-=3;
//obj_cameraNow.y-=3;

}
 if(keyboard_check(vk_down)){
y+=3;
//obj_cameraNow.y+=3;

}
if(keyboard_check(vk_left)){
x-=3;
//obj_cameraNow.x-=3;
image_xscale=-1;

}
if(keyboard_check(vk_right)){
x+=3;
//obj_cameraNow.x+=3;
image_xscale=1;
}

if(isShooting&&isAlive&&charging){
	if(charging>=20){
	if(!effectDone){
	
	bulletEffect=instance_create_layer(x+4,y,"Effects",obj_effectPlus);
	effectExist=true;
	effectDone=true;
	}
	if(effectExist){
		bulletEffect.image_angle=playerDirection;
		bulletEffect.x=x+4;
		bulletEffect.y=y;
		}
if(timer_shooting>0){timer_shooting--;}
		else{
		obj_cameraNow.shakeScreen=true;
		var bullet=instance_create_layer(x,y,"Instances",obj_playerBulletPlus);
		charging-=20;
		bullet.image_xscale=1.5;
		bullet.image_yscale=1.5;
	
		audio_play_sound(player_shoot,0,false);
		var shell=instance_create_layer(x,y,"Instances",obj_shell);
		timer_shooting=room_speed*1;
		effectDone=false;
		}
	}

}

if(useGun){
	myGun.image_angle=playerDirection;
	if(playerDirection>90 &&playerDirection<270){
		myGun.image_yscale=-1;
	}else{myGun.image_yscale=1;}
}

	//if(useGun){myGun.speed=0;}
	
	
	
if(place_meeting(x,y,obj_wallPlus)){
	//obj_cameraNow.speed=0;

	if(!place_meeting(_keep_x,_keep_y,obj_wallPlus)){
	x=_keep_x;
	y=_keep_y;
	//obj_cameraNow.x=keepCamera_x;
	//obj_cameraNow.y=keepCamera_y;
	}
}

if(!place_meeting(x,y,obj_light)){

timer_charging++;
if(timer_charging>room_speed*0.2){
charging++;
timer_charging=0;
}
}
