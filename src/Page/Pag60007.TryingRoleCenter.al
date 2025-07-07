namespace Session_Model.Session_Model;

using Microsoft.Sales.Customer;

page 60007 "Trying Role Center"
{
    ApplicationArea = All;
    Caption = 'Trying Role Center';
    PageType = RoleCenter;
    SourceTable = Customer;

    layout
    {
        area(Content)
        {
            repeater(General)
            {
                field("No."; Rec."No.")
                {
                    ToolTip = 'Specifies the number of the customer. The field is either filled automatically from a defined number series, or you enter the number manually because you have enabled manual number entry in the number-series setup.';
                }
                field(Name; Rec.Name)
                {
                    ToolTip = 'Specifies the name of the customer.';
                }
                field(Address; Rec.Address)
                {
                    ToolTip = 'Specifies the customer''s address. This address will appear on all sales documents for the customer.';
                }
                field(City; Rec.City)
                {
                    ToolTip = 'Specifies the customer''s city.';
                }
                field(Contact; Rec.Contact)
                {
                    ToolTip = 'Specifies the contact person at the customer''s company.';
                }
            }
        }
    }
}