namespace Session_Model.Session_Model;

using Microsoft.Sales.History;

pageextension 60015 PostedSalesInvoiceExt extends "Posted Sales Invoices"
{
    actions
    {
        addlast(Processing)
        {
            action(MyCustomReport)
            {
                ApplicationArea = All;
                Caption = 'My Report'; // Your button label
                Image = Report; // Choose an icon
                trigger OnAction()
                var
                    PostedSalesInvoiceHdr: Record "Sales Invoice Header";
                begin
                    CurrPage.SetSelectionFilter(PostedSalesInvoiceHdr);
                    Report.RunModal(Report::"Final Task", true, false, PostedSalesInvoiceHdr);
                end;
            }
        }
    }
}
