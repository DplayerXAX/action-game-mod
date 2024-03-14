/// @description 在此处插入描述 
// 你可以在此编辑器中写入代码 


draw_self();
if(drawBlock){
	timer_draw++;
if(!doneCreate){
	audio_play_sound(stunned_sound,0,false);
	text=instance_create_layer(x,y-20,"Effects",obj_textBlock);
	doneCreate=true;
}

}else{
	

}


draw_circle_color(1150,700,20,c_white,c_white,false);
draw_circle_color(1150,700,coolDown*6/room_speed,c_black,c_black,false);

if(isAccer){
draw_set_font(font_noticePlus);
draw_set_color(c_white);
draw_text(980,690,"DASHING!");
}
