--
--  The author disclaims copyright to this source code.  In place of
--  a legal notice, here is a blessing:
--
--    May you do good and not evil.
--    May you find forgiveness for yourself and forgive others.
--    May you share freely, not taking more than you give.
--

with Ada.Text_IO;

with Common;
with Static_Socket_Server;
with Static_Socket_Server_FSM;
with Static_Socket_Client;
with Static_Socket_Client_FSM;

procedure Stat_Sock_Test is
   use Ada.Text_IO;

   type Payload_Kind is (A, B, C);

   type Payload_Record (Kind : Payload_Kind) is
      record
         case Kind is
            when A => null;
            when B => I : Long_Integer;
            when C => S : String (1 .. 1000);
         end case;
      end record;

   Config_1 : constant Common.Config :=
     (Address     => (127, 0, 0, 1),
      Port        => 8081,
      Timeout_Con => 0.500,
      Timeout     => 0.100);

   procedure Active_Service is
      new Static_Socket_Client_FSM.Active_Service
     ( --  Address => "localhost",
       --  Port    => 8081,
       Payload => Payload_Record);

begin
   Put_Line ("Stat_Sock_Test.");
end Stat_Sock_Test;
