/// @description 在此处插入描述 
// 你可以在此编辑器中写入代码 

playerDirection = point_direction(obj_blinder.x ,obj_blinder.y , mouse_x , mouse_y );
var _keep_x=x;
var _keep_y=y;
timer_invincible--;
if(keyboard_check(vk_up)){

y-=howIMove;
//obj_cameraNow.y-=howIMove;

}
 if(keyboard_check(vk_down)){
y+=howIMove;
//obj_cameraNow.y+=howIMove;

}
if(keyboard_check(vk_left)){
x-=howIMove;
//obj_cameraNow.x-=howIMove;
image_xscale=-1;

}
if(keyboard_check(vk_right)){
x+=howIMove;
//obj_cameraNow.x+=howIMove;
image_xscale=1;
}

if(isShooting&&isAlive){
	if(charging>=10){
	if(!effectDone){
	audio_play_sound(charging_sound,0,false);
	text1=instance_create_layer(480,710,"UIPlusPlus",obj_textBlockMeToo);
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
		instance_destroy(text1);
		obj_cameraNow.shakeScreen=true;
		var bullet=instance_create_layer(x,y,"Instances",obj_playerBulletPlus);
		charging-=10;
		bullet.image_xscale=1.5;
		bullet.image_yscale=1.5;
	
		audio_play_sound(shoot_sound,0,false);
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
	}
}
if(place_meeting(x,y,obj_airWall)){
	
	if(!place_meeting(_keep_x,_keep_y,obj_wallPlus)){
	x=_keep_x;
	y=_keep_y;
	}
}

if(!place_meeting(x,y,obj_light)){

timer_charging++;
if(timer_charging>room_speed*0.2){
charging++;
timer_charging=0;
}
}
if(charging>100){
charging=100;	
}
