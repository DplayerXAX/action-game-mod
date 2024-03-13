/// @description 在此处插入描述 
// 你可以在此编辑器中写入代码 



timer_change--;
if(timer_change<0){
if(!createDone){
splash=instance_create_layer(x,y,"splash",obj_splash);
createDone=true;
}
timer_keep--;
if(timer_keep<0){splash.image_alpha-=0.1;}
if(splash.image_alpha<=0){
	timer_keep=room_speed*0.2;
	instance_destroy(splash);
 timer_change=room_speed*2;
 createDone=false;
}
}


