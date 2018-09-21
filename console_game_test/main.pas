uses crt;

var
	map : array [0..9] of char;
	i : integer;

begin

	for i := 0 to 9 do
		map[i] := '*';
	
	writeln('Hello World!');

	for i := 0 to 9 do
		writeln(map[i]);

end.