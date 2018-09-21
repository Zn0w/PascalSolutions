uses crt;

type
	Player = record
		x, y : integer;
	end;

var
	map : array [0..9, 0..9] of char;
	i, j : integer;
	terminate : boolean;
	player_input : char;
	player1 : Player;

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
			if (i = player1.y) and (j = player1.x) then
				write('o ')
			else
				write(map[i, j], ' ');
		writeln();
	end;
end;

procedure process_input();
begin
	if (player_input = 'r') then player1.x := player1.x + 1
	else if (player_input = 'l') then player1.x := player1.x - 1
	else if (player_input = 'u') then player1.y := player1.y - 1
	else if (player_input = 'd') then player1.y := player1.y + 1
	else terminate := player_input = 'y';
	
	if (player_input = 'y') then terminate := true;
end;

begin

	init_map();
	terminate := false;
	player1.x := 5;
	player1.y := 5;
	
	while (not terminate) do
	begin
		clrscr();
		display_map();

		write('Do you want to terminate? (y / n)  ');
		readln(player_input);

		process_input();

		writeln();
		writeln();
	end;

end.