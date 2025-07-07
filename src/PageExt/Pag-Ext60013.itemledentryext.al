namespace Session_Model.Session_Model;

using Microsoft.Inventory.Ledger;

pageextension 60013 "item led entry ext" extends "Item Ledger Entries"
{
    trigger OnOpenPage()
    var
        permission: Codeunit ViewLedgerPermission;
    begin
        if not permission.CanViewledger() then
            Error('You donot have access to this file.');
    end;
}
