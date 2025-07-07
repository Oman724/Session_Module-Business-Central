namespace Session_Model.Session_Model;
using Microsoft.Sales.Posting;
using Microsoft.Sales.Document;

codeunit 60003 "Event Management"
{
    [EventSubscriber(ObjectType::Codeunit, Codeunit::"Sales-Post", 'OnBeforePostSalesDoc', '', false, false)]
    local procedure OnBeforePostSalesDoc(var SalesHeader: Record "Sales Header"; CommitIsSuppressed: Boolean)
    var
        SalesPaymentMethod: Record "Sales Payment Method";
        TotalPayment: Decimal;
    begin
        SalesHeader.CalcFields("Amount Including VAT");
        SalesPaymentMethod.SETRANGE("Document No.", SalesHeader."No.");
        if SalesPaymentMethod.FINDFIRST then
            repeat
                TotalPayment += SalesPaymentMethod."Amount";
            until SalesPaymentMethod.NEXT = 0;

        if TotalPayment <> SalesHeader."Amount Including VAT" then
            Error('Total payment does not match the document total.');
    end;
}