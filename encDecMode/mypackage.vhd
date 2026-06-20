package mypackage is
  function fadd (x: integer; y: integer) return integer;
  function fsub (x: integer; y: integer) return integer;
  
component switch is 
    port(
    in1: in integer;
    in2: in integer;
    sel: in bit;
    res: out integer);
end component;

component cipher1 is 
    port(
    x: in integer;
    y: in integer;
    res: out integer);
end component;

component cipher2 is 
    port(
    x: in integer;
    y: in integer;
    res: out integer);
end component;

component decipher1 is 
    port(
    x: in integer;
    y: in integer;
    res: out integer);
end component;

component decipher2 is 
    port(
    x: in integer;
    y: in integer;
    res: out integer);
end component;
  
end package mypackage;

package body mypackage is
  function fadd (x: integer; y: integer) return integer is 
  begin
    return x + y;
  end;

  function fsub (x: integer; y: integer) return integer is 
  begin
    return x - y;
  end;
end package body mypackage;
