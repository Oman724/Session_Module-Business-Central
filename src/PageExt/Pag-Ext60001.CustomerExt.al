namespace Session_Model.Session_Model;

using Microsoft.Sales.Customer;

pageextension 60001 "Customer Ext" extends "Customer Card"
{
    layout
    {
        addafter("Address & Contact")
        {
            group(Detail)
            {
                field(Class; Rec.Class)
                {
                    ApplicationArea = All;
                }
                field(Section; Rec.Section)
                {
                    ApplicationArea = All;
                }
                field("Father's Name"; Rec."Father's Name")
                {
                    ApplicationArea = All;
                }
                field("Mother's Name"; Rec."Mother's Name")
                {
                    ApplicationArea = All;
                }
                field("Student Joining Date"; Rec."Student Joining Date")
                {
                    ApplicationArea = All;
                }
                field("Student Left Date"; Rec."Student Left Date")
                {
                    ApplicationArea = All;
                }
                field("Current Ranking"; Rec."Current Ranking")
                {
                    ApplicationArea = All;
                }
            }
        }
    }
}
