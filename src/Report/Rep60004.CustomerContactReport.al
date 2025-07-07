namespace Session_Model.Session_Model;

using Microsoft.Sales.Customer;

report 60004 "Customer Contact Report"
{
    ApplicationArea = All;
    Caption = 'Customer Contact Report';
    UsageCategory = ReportsAndAnalysis;
    RDLCLayout = 'Report/CustomerContactReport.rdl';
    dataset
    {
        dataitem(Customer; Customer)
        {
            RequestFilterFields = "No.";
            column(No; "No.")
            {
                Caption = 'Customer No.';
            }
            column(Name; Name)
            {
                Caption = 'Customer Name';
            }
            column(PhoneNo; "Phone No.")
            {
                Caption = 'Phone No.';

            }
            column(EMail; "E-Mail")
            {
                Caption = 'Email';
            }
        }
    }
    requestpage
    {
        layout
        {
            area(Content)
            {
                group("Custom Filter")
                {
                    field("Customer No."; CustomerNoFilter)
                    {
                        ApplicationArea = All;
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
        CustomerNoFilter: Code[20];

    trigger OnPreReport()
    begin
        if CustomerNoFilter <> '' then
            Customer.SetRange("No.", CustomerNoFilter);
    end;
}
