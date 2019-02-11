--
--  The author disclaims copyright to this source code.  In place of
--  a legal notice, here is a blessing:
--
--    May you do good and not evil.
--    May you find forgiveness for yourself and forgive others.
--    May you share freely, not taking more than you give.
--

package Common is


   subtype Rising_Edge is Boolean;
   subtype Faling_Edge is Boolean;

   type IO_Signal is
      record
         Enable      : Boolean;      --  Enable communication
         Transmit    : Rising_Edge;  --  Trigger transmission
         Done        : Boolean;      --  Transmission is done
         Unconnected : Boolean;      --  Not connected with peer
         Timeout     : Boolean;      --  Timeout on transmission
         Warning     : Boolean;      --  Unstable communication
         Error       : Boolean;      --  Error state
      end record;


   type Port_Number is range 16#0000# .. 16#FFFF#;

   type IP_Address is
      record
         A1, A2, A3, A4 : Natural range 0 .. 255;
      end record;

   type Config is
      record
         Address     : IP_Address;
         Port        : Port_Number;
         Timeout_Con : Duration;
         Timeout     : Duration;
      end record;

   type State is
      record
         null;
      end record;

end Common;
