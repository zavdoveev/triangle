//fpc 2.6.2

program HelloWorld;
var Ar: array [1..100, 1..100] of integer;
i,j: integer;
t: text;

procedure readfile;
begin
assign(t,'2.txt');
reset(t);

 i := 0;
  while not Eof(t) do begin
    j := 0;
    while not Eoln(t) do begin
      Read(t, Ar[i, j]);
      Inc(j);
    end;
    ReadLn(t);
    Inc(i);
  end;
  Close(t);

end;

begin
readfile;
    writeln('Hello, woeeld!');
    writeln(Ar[2,2]);
    for i:=99 downto 1 do
       for j:=1 to i do
        if (Ar[i,j]+Ar[i+1,j])>(Ar[i,j]+Ar[i+1,j+1]) then Ar[i,j]:=(Ar[i,j]+Ar[i+1,j]) else Ar[i,j]:=(Ar[i,j]+Ar[i+1,j+1]);
    writeln('Hello, world!');
    writeln(Ar[1,1]);
end.
