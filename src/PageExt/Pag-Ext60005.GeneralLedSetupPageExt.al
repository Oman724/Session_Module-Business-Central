namespace Session_Model.Session_Model;

using Microsoft.Finance.GeneralLedger.Setup;

pageextension 60005 "General Led Setup Page Ext" extends "General Ledger Setup"
{
    layout
    {
        addafter("Application")
        // addlast()
        {
            group(Detail)
            {
                field("Teacher Nos."; Rec."Teacher Nos.")
                {
                    ApplicationArea = all;
                }
            }
        }
    }
}
