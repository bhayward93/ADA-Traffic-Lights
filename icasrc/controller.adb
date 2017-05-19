with HWIF; use HWIF;
with Ada.Text_IO; use Ada.Text_IO;
with lightswitcher;

procedure Controller is
begin
   Put_Line("Hello World");

   TurnOn(dir => 1, oct => 1);
   TurnOn(dir => 2, oct => 2);
end Controller;


--Procedure = void

