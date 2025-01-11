with Ada.Text_IO; use Ada.Text_IO;
with GNAT.Sockets;

procedure Api_Request is
   Socket : GNAT.Sockets.Socket_Type;
   Request : String := "GET /data HTTP/1.1" & CRLF &
                       "Host: api.example.com" & CRLF &
                       "Authorization: Bearer YOUR_TOKEN" & CRLF &
                       "Content-Type: application/json" & CRLF &
                       CRLF;
   Response : String;
begin
   Socket := GNAT.Sockets.Create_Socket(GNAT.Sockets.Stream);
   -- Additional code for connecting and sending the request here...

   -- Print the response
   Put_Line(Response);
end Api_Request;
