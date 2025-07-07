namespace Session_Model.Session_Model;

using Microsoft.Sales.Document;

pageextension 60014 SalesLinePageExt extends "Sales Order Subform"
{
    layout
    {
        addlast(Content)
        {
            field(EnableChargeItem; Rec.EnableChargeItem)
            {
                ApplicationArea = All;
            }
        }
        modify(Type)
        {
            trigger OnLookup(var Text: Text): Boolean
            var
                SalesLineTypeEnum: Enum "Sales Line Type";
            begin
                if not Rec.EnableChargeItem then
                    if Rec.Type = SalesLineTypeEnum::"Charge (Item)" then
                        Error('Charge (Item) type is not allowed unless Enable Charge Item is checked.');
            end;

            trigger OnAfterValidate()
            var
                SalesLineTypeEnum: Enum "Sales Line Type";
            begin
                if not Rec.EnableChargeItem then
                    if Rec.Type = SalesLineTypeEnum::"Charge (Item)" then
                        Error('Cannot select "Charge (Item)" unless Enable Charge Item is checked.');
            end;
        }
    }
}


