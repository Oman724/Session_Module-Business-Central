namespace Session_Model.Session_Model;

page 60005 "Class Teacher Card"
{
    ApplicationArea = All;
    Caption = 'Class Teacher Card';
    PageType = Card;
    SourceTable = "Class Teacher";
    
    layout
    {
        area(Content)
        {
            group(General)
            {
                Caption = 'General';
                
                field(ID; Rec.ID)
                {
                    ToolTip = 'Specifies the value of the ID field.', Comment = '%';
                }
                field(Name; Rec.Name)
                {
                    ToolTip = 'Specifies the value of the Name field.', Comment = '%';
                }
                field(Class; Rec.Class)
                {
                    ToolTip = 'Specifies the value of the Class field.', Comment = '%';
                }
                field("No. Series"; Rec."No. Series")
                {
                    ToolTip = 'Specifies the value of the No. Series field.', Comment = '%';
                }
                field(Address; Rec.Address)
                {
                    ToolTip = 'Specifies the value of the Address field.', Comment = '%';
                }
                field("Phone No."; Rec."Phone No.")
                {
                    ToolTip = 'Specifies the value of the Phone No. field.', Comment = '%';
                }
                field("E-Mail"; Rec."E-Mail")
                {
                    ToolTip = 'Specifies the value of the E-Mail field.', Comment = '%';
                }
                field(JoiningDate; Rec.JoiningDate)
                {
                    ToolTip = 'Specifies the value of the JoiningDate field.', Comment = '%';
                }
                field(LeftDate; Rec.LeftDate)
                {
                    ToolTip = 'Specifies the value of the LeftDate field.', Comment = '%';
                }
            }
        }
    }
}
