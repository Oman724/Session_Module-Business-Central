namespace Session_Model.Session_Model;

using Microsoft.Bank.Ledger;

pageextension 60010 "bank account led entry ext" extends "Bank Account Ledger Entries"
{
    trigger OnOpenPage()
    var
        permission: Codeunit ViewLedgerPermission;
    begin
        if not permission.CanViewledger() then
            Error('You donot have access to this file.');
    end;
}
