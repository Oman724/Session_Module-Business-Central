namespace Session_Model.Session_Model;

page 60001 "Sales Payment Method Page"
{
    ApplicationArea = All;
    Caption = 'Sales Payment Method Page';
    PageType = ListPart;
    SourceTable = "Sales Payment Method";
    CardPageId = "Sales Payment Method Card";
    AutoSplitKey = true;

    layout
    {
        area(Content)
        {
            repeater(General)
            {
                // field("Document No."; Rec."Document No.")
                // {
                //     ToolTip = 'Specifies the value of the Document No. field.', Comment = '%';
                // }
                // field("Line No. "; Rec."Line No. ")
                // {
                //     ToolTip = 'Specifies the value of the Line No. field.', Comment = '%';
                // }
                field("Payment Method Code"; Rec."Payment Method Code")
                {
                    ToolTip = 'Specifies the value of the Payment Method Code field.', Comment = '%';
                }
                field(Amount; Rec.Amount)
                {
                    ToolTip = 'Specifies the value of the Amount field.', Comment = '%';
                }
                field("Pre-Assign No."; Rec."Pre-Assign No.")
                {
                    ToolTip = 'Specifies the value of the Pre-Assign No. field.', Comment = '%';
                }
                field("Posting Date"; Rec."Posting Date")
                {
                    ToolTip = 'Specifies the value of the Posting Date field.', Comment = '%';
                }
                field(Posted; Rec.Posted)
                {
                    ToolTip = 'Specifies the value of the Posted field.', Comment = '%';
                }
                field("User Id"; Rec."User Id")
                {
                    ToolTip = 'Specifies the value of the User Id field.', Comment = '%';
                }
            }
        }
    }
}
