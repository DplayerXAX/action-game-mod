/// @description 在此处插入描述 
// 你可以在此编辑器中写入代码 


with(other){

HP--;
if(HP==2){instance_destroy(heart1)}
else if(HP==1){instance_destroy(heart2)}
if(HP==0){
instance_destroy(heart3);
whoWin="blinder1";	
}

}
howWeMove*=5;
howIMove*=5;
instance_destroy();
instance_destroy(light);






