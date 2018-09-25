program graph_test;

uses crt, graph;

procedure init();
var
    gdriver, gmode : integer;

begin
    gdriver := detect;
    gmode := 0;
    initgraph(gdriver, gmode, '');  { gdriver. gmode. path to the video driver if needed }
end;

procedure destroy();
begin
    closegraph();
end;

begin

    init();
    putpixel(500, 500, 2);  { draws a green pixel in x = 500, y = 500 }
    line(0, 0, 100, 100);   {draws a line with start coord (0, 0) and the end coord (100, 100)}
    readkey();  { wait until any key is pressed }
    destroy();

end.