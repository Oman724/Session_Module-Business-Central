namespace Session_Model.Session_Model;

using Microsoft.Sales.Document;

tableextension 60001 "Sales Header Ext" extends "Sales Header"
{
    fields
    {
        field(60000; "Sales Category"; Code[20])
        {
            Caption = 'Sales Category';
            DataClassification = ToBeClassified;
        }
        field(60001; Class; Integer)
        {
            Caption = 'Class';
            DataClassification = ToBeClassified;
        }
    }
}
