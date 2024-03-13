/// @description 在此处插入描述 
// 你可以在此编辑器中写入代码 

enemyDirection = point_direction(x,y,obj_blinder.x ,obj_blinder.y);
walkDirection=point_direction(x,y,irandom(1366),irandom(768));
var _keep_x=x;
var _keep_y=y;


//need to be deleted
switch(current_state){
case state.follow:
		speed=howWeMove;
		decideDirection=false;
		direction=enemyDirection;
		timer_footstep--;
		if(timer_footstep<0){
		
		timer_gap--;
		if(timer_gap<0){
			instance_create_layer(x,y,"light",obj_shadow);
			timer_gap=room_speed*0.1;
			}
		timer_keep--;
		if(timer_keep<0){
		timer_keep=room_speed*0.2;
		timer_footstep=room_speed*1;
			}
		}
		if(!isMove){
		current_state=state.walk;
		}
	break;
	
case state.walk:
		speed=howWeMove;
		if(!decideDirection){
		direction=walkDirection;
		decideDirection=true;
		}
		timer_walk--;
		if(isMove){
		current_state=state.follow;
		decideDirection=false;
		timer_walk=room_speed*2;
		}
		else if(timer_walk<0){
		current_state=state.wait;
		decideDirection=false;
		timer_walk=room_speed*2;
		}

	
	break;
case state.wait:
		speed=0;
		timer_sleep--;
		
			if(isMove){
		current_state=state.follow;
		timer_sleep=room_speed*0.5;
		}
			else if(timer_sleep<0){
			timer_sleep=room_speed*0.5;
		current_state=state.follow;
		}
		
break;
}