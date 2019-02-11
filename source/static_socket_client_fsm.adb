--
--  The author disclaims copyright to this source code.  In place of
--  a legal notice, here is a blessing:
--
--    May you do good and not evil.
--    May you find forgiveness for yourself and forgive others.
--    May you share freely, not taking more than you give.
--

package body Static_Socket_Client_FSM is


   procedure Active_Service
     (The_State   : in     State;
      IO          : in out IO_Signal;
      The_Payload : in     Payload;
      The_Config  : in     Config)
   is
   begin
      null;
   end Active_Service;


   procedure Passive_Service
     (The_State   : in     State;
      IO          : in out IO_Signal;
      The_Payload : in     Payload;
      The_Config  : in     Config)
   is
   begin
      null;
   end Passive_Service;


end Static_Socket_Client_FSM;
