namespace Session_Model.Session_Model;

using Microsoft.Sales.Document;

pageextension 60003 "Sales Order Page Ext" extends "Sales Order"
{
    layout
    {
        // addafter(General)
        // {
        //     group(Detail)
        //     {
        //         field("Sales Category"; Rec."Sales Category")
        //         {
        //             ApplicationArea = all;
        //         }
        //     }
        // }
        modify("Payment Method Code")
        {
            Visible = not SalesPaymentSubformVisible;
        }
        addbefore(SalesLines)
        {


            part(salesPaymentMethod; "Sales Payment Method Page")
            {
                ApplicationArea = All;
                SubPageLink = "Document No." = field("No.");
                UpdatePropagation = Both;
                visible = SalesPaymentSubformVisible;
            }
        }
    }
    trigger OnOpenPage()
    var
        SysMGT: Codeunit "System Management";
    begin
        if SysMGT.MultiplePaymentMethodsEnabled() then
            SalesPaymentSubformVisible := TRUE
        else
            SalesPaymentSubformVisible := FALSE;
    end;


    var
        SalesPaymentSubformVisible: Boolean;
}