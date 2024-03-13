/// @description 在此处插入描述 
// 你可以在此编辑器中写入代码 

HP=3;

if(!place_meeting(x,y,obj_light)&&!place_meeting(x,y,obj_movingLight)&&!place_meeting(x,y,obj_bulletLight)){
if(keyboard_check(ord("W"))){

y-=howWeMove;
if(isAccer){
y-=accer;
}
//obj_cameraNow.y-=howWeMove;

}
 if(keyboard_check(ord("S"))){
y+=howWeMove;
if(isAccer){
y+=accer;
}
//obj_cameraNow.y+=howWeMove;

}
if(keyboard_check(ord("A"))){
x-=howWeMove;
if(isAccer){
x-=accer;
}
//obj_cameraNow.x-=howWeMove;
image_xscale=-1;

}
if(keyboard_check(ord("D"))){
x+=howWeMove;
if(isAccer){
x+=accer;
}
//obj_cameraNow.x+=howWeMove;
image_xscale=1;
}
}else{
	if(timer_limit>room_speed*0.5){
drawBlock=true;
timer_limit=0;
	}
}
timer_limit++;
if(isAccer){
timer_accer--;
if(timer_accer<0){
timer_accer=room_speed*0.5;
isAccer=false;
}
}

if(coolDown>0){
coolDown--;
}

