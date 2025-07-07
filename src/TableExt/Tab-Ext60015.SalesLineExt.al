namespace Session_Model.Session_Model;

using Microsoft.Sales.Document;

tableextension 60015 "SalesLineExt" extends "Sales Line"
{
    fields
    {
        field(60015; EnableChargeItem; Boolean)
        {
            Caption = 'EnableChargeItem';
            DataClassification = ToBeClassified;
        }
    }
}
