uses crt;

var
	map : array [0..9, 0..9] of char;
	i, j : integer;
	terminate : boolean;
	player_input : char;

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

procedure process_input();
begin
	if (player_input = 'y') then terminate := true;
end;

begin

	init_map();
	terminate := false;
	
	while (not terminate) do
	begin
		display_map();

		write('Do you want to terminate? (y / n)  ');
		readln(player_input);

		process_input();

		writeln();
		writeln();
	end;

end.