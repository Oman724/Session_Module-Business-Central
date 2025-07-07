namespace Session_Model.Session_Model;
using Microsoft.Sales.Document;
using System.Security.User;

codeunit 60002 SalesLineValidationSubscriber
{
    [EventSubscriber(ObjectType::Table, Database::"Sales Line", 'OnBeforeValidateEvent', 'Type', false, false)]
    local procedure BlockChargeItemSelection(var Rec: Record "Sales Line"; xRec: Record "Sales Line"; CurrFieldNo: Integer)
    var
        UserSetup: Record "User Setup";
    begin
        if Rec.Type = Rec.Type::"Charge (Item)" then begin
            if UserSetup.Get(UserId) then begin
                if not UserSetup."Allow Charge Item" then
                    Error('You are not allowed to select "Charge (Item)" type.');
            end else
                Error('User setup not found. Cannot validate Charge Item permission.');
        end;
    end;
}