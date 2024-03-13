/// @description 在此处插入描述 
// 你可以在此编辑器中写入代码 






timer_move++;
if(timer_move>room_speed*1){
	timer_move=0;
decidePlace=false;
goBack=!goBack;

}

if(upAndDown==0){
if(!goBack){
	x=lerp(x,_x_final,0.03);
}else{
x=lerp(_x,x,0.97);
}

}else{

if(!goBack){
	y=lerp(y,_y_final,0.03);
}else{
y=lerp(_y,y,0.97);
}

}
