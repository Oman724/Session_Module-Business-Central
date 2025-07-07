namespace Session_Model.Session_Model;

using Microsoft.Sales.Setup;

pageextension 60004 "Sales Receivable Set Page Ext" extends "Sales & Receivables Setup"
{
    layout
    {
        addafter("Dimensions")
        {
            group(Detail)
            {
                field("Enable Multiple Payment"; Rec."Enable Multiple Payment")
                {
                    ApplicationArea = all;
                }
            }
        }
    }
}
