namespace Session_Model.Session_Model;

using Microsoft.Sales.Receivables;

pageextension 60008 "Customer Ledger Entry Ext" extends "Customer Ledger Entries"
{
    trigger OnOpenPage()
    var
        permission: Codeunit ViewLedgerPermission;
    begin
        if not permission.CanViewledger() then
            Error('You donot have access to this file.');
    end;
}
