uses crt;

var
	map : array [0..9, 0..9] of char;
	i, j : integer;

begin

	for i := 0 to 9 do
		for j := 0 to 9 do
			map[i, j] := '*';
	
	writeln('Hello World!');

	for i := 0 to 9 do
	begin
		for j := 0 to 9 do
			write(map[i, j], ' ');
		writeln();
	end;

end.