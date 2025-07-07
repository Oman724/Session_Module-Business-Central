namespace Session_Model.Session_Model;

using System.Security.User;

tableextension 60005 "User Setup Ext" extends "User Setup"
{
    fields
    {
        field(60000; "View Ledger"; Boolean)
        {
            Caption = 'View Ledger';
            DataClassification = ToBeClassified;
        }
        field(60001; "Allow Charge item"; Boolean)
        {
            Caption = 'Allow Charge item';
            DataClassification = ToBeClassified;
        }
    }
}
