vector1=[1;2;3];
matrix2=SO3_wedge(vector1);
vector2=SO3_vee(matrix2);
matrix1=[3 3 6;4 4 9;6 9 3];

matrix3=SO3_Exp(vector1);
Rnorm = SO3normalize(matrix3)
vector3=SO3_Log(matrix3);

matrix4=SO3_Exp(vector1)