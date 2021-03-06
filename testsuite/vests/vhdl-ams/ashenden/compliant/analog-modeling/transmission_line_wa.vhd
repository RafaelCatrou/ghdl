
-- Copyright (C) 2002 Morgan Kaufmann Publishers, Inc

-- This file is part of VESTs (Vhdl tESTs).

-- VESTs is free software; you can redistribute it and/or modify it
-- under the terms of the GNU General Public License as published by the
-- Free Software Foundation; either version 2 of the License, or (at
-- your option) any later version. 

-- VESTs is distributed in the hope that it will be useful, but WITHOUT
-- ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or
-- FITNESS FOR A PARTICULAR PURPOSE.  See the GNU General Public License
-- for more details. 

-- You should have received a copy of the GNU General Public License
-- along with VESTs; if not, write to the Free Software Foundation,
-- Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA 

library ieee_proposed;  use ieee_proposed.electrical_systems.all;
                        
entity transmission_line_wa is
  port ( quantity vin : in voltage; 
         quantity vout : out voltage); 
end entity transmission_line_wa;

----------------------------------------------------------------

architecture abstract of transmission_line_wa is
  constant propagation_time : real := 2.5E-9;
  constant attenuation : real := 0.8;
  quantity vin_temp : real;
begin 
  vin_temp == vin;
  vout == attenuation * vin_temp'delayed(propagation_time);
end architecture abstract;
