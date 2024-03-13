/// @description 在此处插入描述 
// 你可以在此编辑器中写入代码 


speed+=0.4;
light.x=x;
light.y=y;


if(x>1366||x<0||y>768||y<0)
{
	howWeMove*=5;
instance_destroy();
instance_destroy(light);

}

