with Ada.Text_IO;

procedure Overflow with SPARK_Mode is
   X : Long_Float range 0.0 .. 3000000000.0 := Long_Float(integer'last);
   V : integer range 0 .. 1000;
begin
  V := Integer(X);
  Ada.Text_IO.Put_Line (integer'Image (V));
  X := X + 0.5;
  V := Integer(X);
  Ada.Text_IO.Put_Line (integer'Image (V));
end Overflow;
