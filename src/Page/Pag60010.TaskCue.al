namespace Session_Model.Session_Model;

page 60010 "Task Cue"
{
    ApplicationArea = All;
    Caption = 'Task Cue';
    PageType = CardPart;
    SourceTable = "Task Cue";

    layout
    {
        area(Content)
        {
            cuegroup(General)
            {
                Caption = 'General';

                field(Open_Tasks; Rec.Open_Tasks)
                {
                    ToolTip = 'Specifies the value of the Open_Tasks field.', Comment = '%';
                    DrillDownPageId = "Task Cue ListPage";
                }
                field(Completed_Tasks; Rec.Completed_Tasks)
                {
                    ToolTip = 'Specifies the value of the Completed_Tasks field.', Comment = '%';
                    DrillDownPageId = "Task Cue ListPage";

                }
                field(Total_Tasks; Rec.Total_Tasks)
                {
                    ToolTip = 'Specifies the value of the Total_Tasks field.', Comment = '%';
                    DrillDownPageId = "Task Cue ListPage";

                }
                field(Estimated_Hours; Rec.Estimated_Hours)
                {
                    ToolTip = 'Specifies the value of the Estimated_Hours field.', Comment = '%';
                    DrillDownPageId = "Task Cue ListPage";

                }
            }
        }
    }
}


