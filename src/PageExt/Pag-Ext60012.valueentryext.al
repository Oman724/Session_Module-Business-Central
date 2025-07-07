namespace Session_Model.Session_Model;

using Microsoft.Inventory.Ledger;

pageextension 60012 "value entry ext" extends "Value Entries"
{
    trigger OnOpenPage()
    var
        permission: Codeunit ViewLedgerPermission;
    begin
        if not permission.CanViewledger() then
            Error('You donot have access to this file.');
    end;
}
