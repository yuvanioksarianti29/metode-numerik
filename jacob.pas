  program jacobi;
uses wincrt;
var

a11,a12,a13:real;
a21,a22,a23:real;
a31,a32,a33:real;
b1,b2,b3:real;
x1:array[0..20] of real; x2:array[0..20] of real; x3:array[0..20] of real;
uji:array[0..20]of real; k,i:integer;
f1:array[0..20]of real;f2:array[0..20]of real;f3:array[0..20]of real;
begin
{nilai berdasarkan soal}
a11:=5;a12:=-1;a13:=1;
a21:=2;a22:=8;a23:=-1;
a31:=-1;a32:=1;a33:=4;
b1:=10;b2:=11;b3:=3;

k:=0;
x1[k]:=0;x2[k]:=0;x3[k]:=0;
x1[k+1]:=1/a11*(b1-(a12*x2[k])-(a13*x3[k]));
x2[k+1]:=1/a22*(b2-(a21*x1[k])-(a23*x3[k]));
x3[k+1]:=1/a33*(b3-(a31*x1[k])-(a32*x2[k]));

f1[k]:=(5*x1[k+1])-x2[k+1]+x3[k+1]-10;
f2[k]:=(2*x1[k+1])+(8*x2[k+1])-x3[k+1]-11;
f3[k]:=(-x1[k+1])+x2[k+1]+(4*x3[k+1])-3;
uji[k]:=sqrt((f1[k]*f1[k])+(f2[k]*f2[k])+(f3[k]*f3[k]));



if uji[k]>0.0001 then

repeat
k:=k+1;
x1[k+1]:=1/a11*(b1-(a12*x2[k])-(a13*x3[k]));
x2[k+1]:=1/a22*(b2-(a21*x1[k])-(a23*x3[k]));
x3[k+1]:=1/a33*(b3-(a31*x1[k])-(a32*x2[k]));

f1[k+1]:=(5*x1[k+1])-x2[k+1]+x3[k+1]-10;
f2[k+1]:=(2*x1[k+1])+(8*x2[k+1])-x3[k+1]-11;
f3[k+1]:=(-x1[k+1])+x2[k+1]+(4*x3[k+1])-3;

uji[k+1]:=sqrt((f1[k+1]*f1[k+1])+(f2[k+1]*f2[k+1])+(f3[k+1]*f3[k+1]));


until (uji[k+1]<0.0001);

{tampilkan data!}
writeln('Metode jacobi');
writeln('soal:5x1+x2+x3=10');
writeln(' 2x1+8x2-x3=11');
writeln(' -x1+x2+4x3=3');
writeln(' PROSES ITERASI METODE JACOBI ');
writeln('***************************************************************');
writeln('* K        x1            x2            x3               uji* ');
writeln('***************************************************************');
for i:=1 to k do
begin
writeln(i:3,x1[i+1]:10:6,x2[i+1]:15:6,x3[i+1]:15:6,uji[i+1]:19:6);
end;
writeln;
writeln('jadi akarnya x1:',x1[k]:3:6);
writeln(' x2:',x2[k]:3:6);
writeln(' x3:',x3[k]:3:6);
writeln;
end.
