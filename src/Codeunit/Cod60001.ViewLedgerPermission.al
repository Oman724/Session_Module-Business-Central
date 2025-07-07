namespace Session_Model.Session_Model;
using System.Security.User;

codeunit 60001 ViewLedgerPermission
{
    procedure CanViewledger(): Boolean
    var
        UserSetup: Record "User Setup";
    begin
        if UserSetup.Get(UserId) then
            exit(UserSetup."View Ledger")
        else
            exit(false);
    end;
}
