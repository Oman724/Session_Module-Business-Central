namespace Session_Model.Session_Model;

using Microsoft.Finance.GeneralLedger.Ledger;

pageextension 60007 GeneralLedgerEntryPageExt extends "General Ledger Entries"
{
    trigger OnOpenPage()
    var
        permission: Codeunit ViewLedgerPermission;
    begin
        if not permission.CanViewledger() then
            Error('You donot have access to this file.');
    end;
}
