Program newton;
 uses crt;
 var
    MM,m,n,i,j,T,iterasi : integer;
     a     : array[0..10] of real;
     b     : array[0..10] of real;
     c     : array[0..10] of real;
     x0,eps,xbaru,akar : real;
     begin
      clrscr;
      write('Derajat Polinom :');
      readln(m);
      write('Nilai tebakan awal :');
      readln(x0);
      write('Nilai Epsilon :');
      readln(eps);
      write('Iterasi Maksimum :');
      readln(T);
      writeln;
      for i:=0 to m do
        begin
         write('a(',i,')=');
         readln(a[i]);
        end;
       b[m]:=a[m];
       c[m]:=b[m];
      for iterasi:=1 to T do
        begin
          for i:=m-1 downto 1 do
           begin
             b[i]:=a[i]+x0*b[i+1];
             c[i]:=b[i]+x0*c[i+1];
           end;
        b[0]:=a[0]+x0*b[1];
        xbaru:=x0-b[0]/c[1];
         if abs((xbaru-x0)/xbaru)>=eps then mm:=iterasi;
         x0:=xbaru;
         writeln('iterasi ',iterasi,'=',xbaru:10:7);
       end;
     writeln('Akar=',xbaru:10:7,' konvergen pada iterasi ke ',MM+1);
     readln;

end.
