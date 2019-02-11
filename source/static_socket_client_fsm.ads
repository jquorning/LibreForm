--
--  The author disclaims copyright to this source code.  In place of
--  a legal notice, here is a blessing:
--
--    May you do good and not evil.
--    May you find forgiveness for yourself and forgive others.
--    May you share freely, not taking more than you give.
--

with Common;

package Static_Socket_Client_FSM is

   use Common;


--     generic
--        Address : constant String;
--        Port    : constant Port_Number;
--        type Payload (<>) is private;
--     procedure Active_Service_On_Change
--       (The_State  : in     State;
--        IO         : in out IO_Signal;
--        The_Config : in     Config := Default_Config);


   generic
      type Payload (<>) is private;
   procedure Active_Service  --  _On_Trigger
     (The_State   : in     State;
      IO          : in out IO_Signal;
      The_Payload : in     Payload;
      The_Config  : in     Config);


--     generic
--        Address : constant String;
--        Port    : constant Port_Number;
--        type Payload (<>) is private;
--        with procedure Received (The_Payload : Payload);
--     procedure Passive_Service_On_Change
--       (The_State  : in     State;
--        IO         : in out IO_Signal;
--        The_Config : in     Config := Default_Config);


   generic
      type Payload (<>) is private;
   procedure Passive_Service  --  _On_Trigger
     (The_State   : in     State;
      IO          : in out IO_Signal;
      The_Payload : in     Payload;
      The_Config  : in     Config);


end Static_Socket_Client_FSM;
