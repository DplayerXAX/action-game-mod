/// @description 在此处插入描述 
// 你可以在此编辑器中写入代码 
timer_gap=room_speed*0.1;
timer_footstep=room_speed*1;

globalvar howWeMove;
globalvar isAccer;
howWeMove=2;
isAccer=false;
HP=3;
drawBlock=false;
timer_draw=0;
timer_limit=room_speed*0.51;
accer=5;
coolDown=0;
timer_accer=room_speed*0.5;
abilityPower=10;
doneCreate=false;


heart1=instance_create_layer(1050,100,"UI",obj_heart_ha);
heart2=instance_create_layer(1100,100,"UI",obj_heart_ha);
heart3=instance_create_layer(1150,100,"UI",obj_heart_ha);
