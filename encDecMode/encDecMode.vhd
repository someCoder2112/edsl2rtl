use work.mypackage.all;

entity encDecMode is 
    port(
    data: in integer;
    key: in integer;
    sel: in bit;
    res: out integer);
end entity;

architecture behave of encDecMode is 

    signal enc1: integer;
    signal enc2: integer;
    signal enc: integer;
    signal dec1: integer;
    signal dec2: integer;
    signal dec: integer;

begin

    cipher_proc1: cipher1 
    port map(
    x => data,
    y => key,
    res => enc1);
    
    cipher_proc2: cipher2 
    port map(
    x => data,
    y => key,
    res => enc2);
    
    switch_sel1: switch
    port map(
    in1 => enc1,
    in2 => enc2,
    sel => sel,
    res => enc);

    decipher_proc1: decipher1
    port map(
    x => enc,
    y => key,
    res => dec1);
    
    decipher_proc2: decipher2
    port map(
    x => enc,
    y => key,
    res => dec2);
    
    switch_sel2: switch
    port map(
    in1 => dec1,
    in2 => dec2,
    sel => sel,
    res => res);


end architecture;
