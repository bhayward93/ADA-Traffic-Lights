with Ada.Text_IO; use Ada.Text_IO;
with HWIF; use HWIF;
--with lightswitcher;
--with HWIF_Types;
procedure Controller is

 --  Pedestrian_Light_Oct:HWIF.Direction_Octet  --To Delete; Not needed

   testOct :Octet:= 00000001; --testoct is an octet, with 00 assigned to it
   --the current idea is to attempt to change the value of the dir_octs to the test oct value.
begin
  --HWIF.Direction_Octet --CAN ACCESS THIS HERE, DOES NOT NEED DECLARING.
put_line("HELLO WORLD");
end Controller;

--One problem: Assosciating direction with the octet. Does HWIF instantiate it already?

