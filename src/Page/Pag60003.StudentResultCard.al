namespace Session_Model.Session_Model;

page 60003 "Student Result Card"
{
    ApplicationArea = All;
    Caption = 'Student Result Card';
    PageType = Card;
    SourceTable = "Student Result";

    layout
    {
        area(Content)
        {
            group(General)
            {
                Caption = 'General';

                field("Std ID"; Rec."Std ID")
                {
                    ToolTip = 'Specifies the value of the Std ID field.', Comment = '%';
                }
                field("Std Name"; Rec."Std Name")
                {
                    ToolTip = 'Specifies the value of the Std Name field.', Comment = '%';
                }
                field("Total Marks"; Rec."Total Marks")
                {
                    ToolTip = 'Specifies the value of the Total Marks field.', Comment = '%';
                }
                field("Marks Obtained"; Rec."Marks Obtained")
                {
                    ToolTip = 'Specifies the value of the Marks Obtained field.', Comment = '%';
                }
                field(Percentage; Rec.Percentage)
                {
                    ToolTip = 'Specifies the value of the Percentage field.', Comment = '%';
                }
                field(Remarks; Rec.Remarks)
                {
                    ToolTip = 'Specifies the value of the Remarks field.', Comment = '%';
                }
                field(Class; Rec.Class)
                {
                    ToolTip = 'Specifies the value of the Class field.', Comment = '%';
                }
            }
            part(Subform; "Student Result ListPart")
            {
                ApplicationArea = All;
                SubPageLink = "Std ID" = field("Std ID");
            }
        }
    }
}
