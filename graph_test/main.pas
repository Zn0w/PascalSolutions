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
    readkey();
    destroy();

end.