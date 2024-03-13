/// @description 在此处插入描述 
// 你可以在此编辑器中写入代码 

abilityPower=10;
HP=3;
timer_charging=room_speed*0.5;
charging=75;
globalvar isMove;
globalvar effectExist;
effectExist	=false;
isMove=false;
isShooting=false;
timer_shooting=room_speed*0.5;
isAlive=true;

myGun=instance_create_layer(x-2,y,"Guns",obj_gunPlus);
myGun.iBelong="player";
haveWave=true;
waveLength=2;
useGun=true;
effectDone=false;
var bulletEffect;
heart1=instance_create_layer(250,100,"UI",obj_heart);
heart2=instance_create_layer(300,100,"UI",obj_heart);
heart3=instance_create_layer(350,100,"UI",obj_heart);

audio_play_sound(0,dream_music,true);