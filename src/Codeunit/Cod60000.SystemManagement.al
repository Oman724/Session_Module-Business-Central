namespace Session_Model.Session_Model;
using Microsoft.Sales.Setup;

codeunit 60000 "System Management"
{
    procedure MultiplePaymentMethodsEnabled(): Boolean
    var
        SalesSetup: Record "Sales & Receivables Setup";
    begin
        SalesSetup.GET;
        if SalesSetup."Enable Multiple Payment" then
            EXIT(TRUE);
        EXIT(FALSE);
    end;
}