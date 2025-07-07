namespace Session_Model.Session_Model;

using System.Security.User;

pageextension 60006 "User SetupPage Ext" extends "User Setup"
{
    layout
    {
        addafter("Allow Posting From")
        {
            field("View Ledger"; Rec."View Ledger")
            {
                ApplicationArea = All;
            }
        }
        addafter("Allow Deferral Posting To")
        {
            field("Allow Charge Item"; Rec."Allow Charge Item")
            {
                ApplicationArea = All;
            }
        }
    }
}
