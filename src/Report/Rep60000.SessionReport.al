namespace Session_Model.Session_Model;

using Microsoft.Sales.Customer;

report 60000 "Session Report"
{
    ApplicationArea = All;
    Caption = 'Session Report';
    UsageCategory = ReportsAndAnalysis;
    DefaultLayout = RDLC;
    RDLCLayout = '.\Report\sessionreport.rdl';
    dataset
    {
        dataitem(Customer; Customer)
        {
            RequestFilterFields = "No.";
            column(No; "No.")
            {
            }
            column(Name; Name)
            {
            }

            column(PhoneNo; "Phone No.")
            {
            }
            column(InvAmountsLCY; "Inv. Amounts (LCY)")
            {
            }
            column(InvDiscountsLCY; "Inv. Discounts (LCY)")
            {
            }
            column(LocationCode; "Location Code")
            {
            }
            column(Address; Address)
            {
            }
            column(BalanceDue; "Balance Due")
            {
            }
            column(SN; sn)
            {
            }
            trigger OnPreDataItem()
            var
                myInt: Integer;
            begin
                // SetRange("No.", OmanFilter);
                sn := 0
            end;

            trigger OnAfterGetRecord()
            var
                myInt: Integer;
            begin
                sn := sn + 1;
            end;
        }
    }
    requestpage
    {
        layout
        {
            area(Content)
            {
                group(GroupName)
                {
                    field(OmanFilter; OmanFilter)
                    {
                        Caption = 'Oman Filter';
                        ApplicationArea = All;
                        Editable = true;
                        // Visible = false;
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
    // trigger OnInitReport()
    // begin
    //     Message('I am here at on init trigger.');
    // end;

    // trigger OnPreReport()
    // begin
    //     Message('I am here at on Pre trigger.');

    // end;

    // trigger OnPostReport()
    // begin
    //     Message('I am here at on Post trigger.');

    // end;

    var
        OmanFilter: Text;

        sn: Integer;


}
