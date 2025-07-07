namespace Session_Model.Session_Model;

using Microsoft.Purchases.Payables;

pageextension 60009 "vendor led entry ext" extends "Vendor Ledger Entries"
{
    trigger OnOpenPage()
    var
        permission: Codeunit ViewLedgerPermission;
    begin
        if not permission.CanViewledger() then
            Error('You donot have access to this file.');
    end;
}
