namespace Session_Model.Session_Model;

using Microsoft.Sales.Document;
using Microsoft.Sales.Customer;

report 60001 "Practice Report"
{
    ApplicationArea = All;
    Caption = 'Practice Report';
    UsageCategory = ReportsAndAnalysis;
    RDLCLayout = './Report/PracticeReport.rdl';
    dataset
    {
        dataitem(SalesLine; "Sales Line")
        {
            column(No; "No.")
            {
            }
            column(DocumentType; "Document Type")
            {
            }
            column(SelltoCustomerNo; "Sell-to Customer No.")
            {
            }
            column(LineNo; "Line No.")
            {
            }
            column(DocumentNo; "Document No.")
            {
            }
            column(UnitPrice; "Unit Price")
            {
            }
            column(UnitCostLCY; "Unit Cost (LCY)")
            {
            }
            trigger OnPreDataItem()
            begin
                // SalesLine.SetRange("Unit Price", 0, 500);
                // SetFilter("No.", '1920-S');

            end;

            trigger OnAfterGetRecord()
            begin

            end;
        }
    }
    requestpage
    {
        AboutTitle = '"My Practice On Report"';
        layout
        {
            area(Content)
            {

                group(GroupName)
                {
                    field(narration; narration)
                    {
                        Caption = 'Narration';
                        ApplicationArea = all;
                        TableRelation = Customer."No.";
                    }
                }
            }
        }
        actions
        {
            area(Processing)
            {
            }
        }
    }
    var
        narration: Text;
        sn: Decimal;

}
