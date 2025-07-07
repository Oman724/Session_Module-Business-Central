namespace Session_Model.Session_Model;

using Microsoft.Sales.History;
using Microsoft.Foundation.Company;

report 60002 "Task Report"
{
    ApplicationArea = All;
    Caption = 'Task Report';
    UsageCategory = ReportsAndAnalysis;
    RDLCLayout = 'Report/TaskReport.rdl';
    dataset
    {
        dataitem(SalesInvoiceLine; "Sales Invoice Line")
        {
            column(No; "No.")
            {
            }
            column(Description; Description)
            {
            }
            column(QtyperUnitofMeasure; "Qty. per Unit of Measure")
            {
                Caption = 'Qty. Unit';
            }
            column(UnitPrice; "Unit Price")
            {
            }
            column(LineDiscount; "Line Discount %")
            {
            }
            column(Amount; Amount)
            {
            }
            column(sn; SN)
            {
            }
            column(CompanyInformation; CompanyInformation.Picture)
            {

            }
            trigger OnPreDataItem()
            var
                myInt: Integer;
            begin
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
        CompanyInformation: Record "Company Information";
        sn: integer;
        Name: Text;
        Address: Text;


    trigger OnPreReport()
    var
        myInt: Integer;
    begin
        CompanyInformation.Get();
        CompanyInformation.CalcFields(Picture);
    end;
}