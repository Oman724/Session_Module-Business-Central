namespace Session_Model.Session_Model;

using Microsoft.Finance.GeneralLedger.Setup;

tableextension 60004 "General Led Setup Ext" extends "General Ledger Setup"
{
    fields
    {
        field(60000; "Teacher Nos."; Code[20])
        {
            Caption = 'Teacher Nos.';
            DataClassification = ToBeClassified;
        }
    }
}
