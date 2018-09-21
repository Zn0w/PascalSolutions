uses crt;

var
	map : array [0..9, 0..9] of char;
	i, j : integer;

procedure init_map();
begin
	for i := 0 to 9 do
		for j := 0 to 9 do
			map[i, j] := '*';
end;

procedure display_map();
begin
	for i := 0 to 9 do
	begin
		for j := 0 to 9 do
			write(map[i, j], ' ');
		writeln();
	end;
end;

begin

	init_map();
	
	writeln('Hello World!');

	display_map();

end.