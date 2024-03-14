randomize();

timer_footstep=room_speed*1;
timer_keep=room_speed*0.2;
timer_gap=room_speed*0.1;
decideDirection=false;
timer_walk=room_speed*2;
timer_sleep=room_speed*0.5;
timer_gap=room_speed*0.1;
timer_footstep=room_speed*1;

enum state{
follow,
walk,
wait
}
current_state=state.walk;