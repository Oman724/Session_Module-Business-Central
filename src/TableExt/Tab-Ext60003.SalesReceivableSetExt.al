namespace Session_Model.Session_Model;

using Microsoft.Sales.Setup;

tableextension 60003 "Sales & Receivable Set Ext" extends "Sales & Receivables Setup"
{
    fields
    {
        field(60000; "Enable Multiple Payment"; Boolean)
        {
            Caption = 'Enable Multiple Payment';
            DataClassification = ToBeClassified;
        }
    }
}
