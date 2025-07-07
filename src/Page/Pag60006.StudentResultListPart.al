namespace Session_Model.Session_Model;

page 60006 "Student Result ListPart"
{
    ApplicationArea = All;
    Caption = 'Student Result ListPart';
    PageType = ListPart;
    SourceTable = "Student Result Subform";
    AutoSplitKey = true;

    layout
    {
        area(Content)
        {
            repeater(General)
            {
                field("Std ID"; Rec."Std ID")
                {
                    ToolTip = 'Specifies the value of the Std ID field.', Comment = '%';
                }
                field("Line No."; Rec."Line No.")
                {
                    ToolTip = 'Specifies the value of the Line No. field.', Comment = '%';
                }
                field(Subject; Rec.Subject)
                {
                    ToolTip = 'Specifies the value of the Subject field.', Comment = '%';
                }
                field("Marks Obtain"; Rec."Marks Obtain")
                {
                    ToolTip = 'Specifies the value of the Marks Obtain field.', Comment = '%';
                }
            }
        }
    }
}
