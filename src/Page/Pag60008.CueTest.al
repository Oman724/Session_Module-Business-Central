namespace Session_Model.Session_Model;

using Microsoft.Sales.Customer;
using Microsoft.Bank.Ledger;

page 60008 "Cue Test"
{
    ApplicationArea = All;
    Caption = 'Cue Test Part-1';
    PageType = CardPart;
    SourceTable = Customer;
    UsageCategory = Administration;

    layout
    {
        area(Content)
        {
            cuegroup(General)
            {
                Caption = 'General';
                field(Amount; Rec.Amount)
                {
                    ApplicationArea = All;
                    Caption = 'Amount';
                    DrillDownPageId = "Bank Acc. Ledg. Entr. Preview";
                }
                field("Payment Terms Id"; Rec."Payment Terms Id")
                {
                    ApplicationArea = All;
                    Caption = 'Payment';
                }
            }
        }
    }
}
