namespace Session_Model.Session_Model;

using Microsoft.Finance.VAT.Ledger;

pageextension 60011 "vat entry ext" extends "VAT Entries"
{
    trigger OnOpenPage()
    var
        permission: Codeunit ViewLedgerPermission;
    begin
        if not permission.CanViewledger() then
            Error('You donot have access to this file.');
    end;
}
