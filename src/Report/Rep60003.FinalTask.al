namespace Session_Model.Session_Model;

using Microsoft.Sales.History;
using Microsoft.Sales.Customer;
using Microsoft.Foundation.Company;

report 60003 "Final Task"
{
    ApplicationArea = All;
    Caption = 'Final Task';
    UsageCategory = None;
    RDLCLayout = 'Report/FinalTask.rdl';
    dataset
    {
        dataitem(SalesInvoiceHeader; "Sales Invoice Header")
        {

            column(Name; customer.Name)
            {

            }
            column(Address; Address)
            {

            }
            column(No; "No.")
            {
            }
            column(Sell_to_Customer_No_; "Sell-to Customer No.")
            {
            }
            column(SelltoCustomerName; "Sell-to Customer Name")
            {
            }
            column(VATRegistrationNo; "VAT Registration No.")
            {
            }
            column(OrderDate; "Order Date")
            {
            }
            column(PostingDate; "Posting Date")
            {
            }
            column(CompanyInformation; CompanyInformation.Picture)
            {
            }
            column(Payment_Method_Code; "Payment Method Code") { }


            dataitem("Sales Invoice Line"; "Sales Invoice Line")
            {
                DataItemLink = "Document No." = FIELD("No.");

                DataItemTableView = SORTING("No.", "Document No.") WHERE("Quantity" = FILTER(<> 0));
                column(SN; "SN")
                {
                }
                column(No_; "No.")
                {
                }
                column(Description; Description)
                {
                }
                column(Qty__per_Unit_of_Measure; "Qty. per Unit of Measure")
                {
                }
                column(Unit_Price; "Unit Price")
                {
                }
                column(Line_Discount__; "Line Discount %")
                {
                }
                column(Amount; Amount)
                {
                }
                trigger OnPreDataItem()
                var
                    myInt: Integer;
                begin
                    SN := 0;
                end;

                trigger OnAfterGetRecord
                ()
                var
                    myInt: Integer;
                begin
                    SN := SN + 1;
                end;
            }
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
        Name: Text;
        Address: Text;
        SN: Integer;
        CompanyInformation: Record "Company Information";
        customer: Record Customer;

    trigger OnPreReport()
    var
        myInt: Integer;
    begin
        CompanyInformation.Get();
        CompanyInformation.CalcFields(Picture);
    end;
}
