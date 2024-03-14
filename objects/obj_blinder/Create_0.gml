/// @description 在此处插入描述 
// 你可以在此编辑器中写入代码 
/*
var file=file_text_open_read(working_directory +"\action.json");
var str="";
while(!file_text_eof(file))
{
	str+= file_text_readln(file);
}
data= json_parse(str);
*/
randomize();
abilityPower=10;
HP=3;
timer_charging=room_speed*0.5;
charging=75;
globalvar isMove;
globalvar howIMove;
globalvar effectExist;
globalvar whoWin;
globalvar howWeMove;
globalvar isAccer;
globalvar numOfBlock;
globalvar numOfEnemy;
howWeMove=2;
isAccer=false;
numOfBlock=6;

effectExist	=false;
isMove=false;
whoWin="";
howIMove=3;

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
for(var i=0;i<numOfBlock;i++){
var wall=instance_create_layer(irandom(900)+250,irandom(600)+100,"Instances",obj_wallPlus);
wall.image_angle+=irandom(1)*90;
wall.image_xscale+=(1+random(2));
wall.image_yscale+=(1+random(2));
}

for(var i=0;i<numOfEnemy;i++){
var enemyPlus=instance_create_layer(irandom(900)+250,irandom(600)+100,"Instances",obj_enemyPlus);
enemyPlus.image_angle+=irandom(1)*90;
enemyPlus.image_xscale+=(1+random(2));
enemyPlus.image_yscale+=(1+random(2));
}
x=irandom(980)+210;
		y=irandom(680)+60;
		while(place_meeting(x,y,obj_blinder2)||place_meeting(x,y,obj_enemyPlus)||place_meeting(x,y,obj_wall)||place_meeting(x,y,obj_airWall)){
		x=irandom(980)+210;
		y=irandom(680)+60;
		}
audio_play_sound(dream_music,0,true);
