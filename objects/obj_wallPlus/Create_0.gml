/// @description 在此处插入描述 
// 你可以在此编辑器中写入代码 
randomize();

decidePlace=false;
goBack=false;
timer_move=0;
upAndDown=irandom(1);


while(place_meeting(x,y,obj_wallPlus)){
	x=irandom(500)+450;
	y=irandom(200)+300;

}

_x=x;
_x_final=x+sign(0.5-irandom(1))*150; 
_y=y;
_y_final=y+sign(0.5-irandom(1))*150;