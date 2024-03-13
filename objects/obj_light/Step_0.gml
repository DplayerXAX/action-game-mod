/// @description 在此处插入描述 
// 你可以在此编辑器中写入代码 


timer_switch--;

if(timer_switch<0){

if(sprite_index==spr_lightOn){
sprite_index=spr_lightDown;
}
else if(sprite_index==spr_lightDown){
sprite_index=spr_lightOn;
}
timer_switch=room_speed*1;
}





