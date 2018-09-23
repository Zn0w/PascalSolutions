uses crt;

type
	Player = record
		x, y : integer;
	end;

var
	map : array [0..9, 0..9] of char;
	i, j : integer;
	terminate : boolean;
	player1 : Player;

function is_out_of_bound(axis : char; side_origin : boolean) : boolean;
begin
	if (axis = 'x') then
	begin
		if side_origin then
			is_out_of_bound := (player1.x = 0)
		else
			is_out_of_bound := (player1.x = 9);
	end
	else if (axis = 'y') then
	begin
		if side_origin then
			is_out_of_bound := (player1.y = 0)
		else
			is_out_of_bound := (player1.y = 9);
	end;
end;

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

procedure process_input(key : char);
begin
	if (key = #77) then // right arrow
	begin
		if (not is_out_of_bound('x', false)) then
			player1.x := player1.x + 1;
	end

	else if (key = #75) then // left arrow
	begin
		if (not is_out_of_bound('x', true)) then
			player1.x := player1.x - 1;
	end

	else if (key = #72) then // up arrow
	begin
		if (not is_out_of_bound('y', true)) then
			player1.y := player1.y - 1;
	end

	else if (key = #80) then // down arrow
	begin
		if (not is_out_of_bound('y', false)) then
			player1.y := player1.y + 1;
	end

	else terminate := key = #27; // escape key
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

		if keypressed() then
			process_input(readkey());	

		delay(10);
	end;

end.