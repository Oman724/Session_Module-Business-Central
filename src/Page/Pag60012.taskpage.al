namespace Session_Model.Session_Model;

page 60012 "task page"
{
    ApplicationArea = All;
    Caption = 'task page';
    PageType = List;
    SourceTable = "Task Cue";
    UsageCategory = Lists;

    layout
    {
        area(Content)
        {
            repeater(General)
            {
                field("Code"; Rec."Code")
                {
                    ToolTip = 'Specifies the value of the Code field.', Comment = '%';
                }
                field(Total_Tasks; Rec.Total_Tasks)
                {
                    ToolTip = 'Specifies the value of the Total_Tasks field.', Comment = '%';
                }
                field(Completed_Tasks; Rec.Completed_Tasks)
                {
                    ToolTip = 'Specifies the value of the Completed_Tasks field.', Comment = '%';
                }
                field(Open_Tasks; Rec.Open_Tasks)
                {
                    ToolTip = 'Specifies the value of the Open_Tasks field.', Comment = '%';
                }
                field(Estimated_Hours; Rec.Estimated_Hours)
                {
                    ToolTip = 'Specifies the value of the Estimated_Hours field.', Comment = '%';
                }
            }
        }
    }
}
