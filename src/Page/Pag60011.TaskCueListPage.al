namespace Session_Model.Session_Model;

page 60011 "Task Cue ListPage"
{
    ApplicationArea = All;
    Caption = 'Task Cue ListPage';
    PageType = List;
    SourceTable = Task;
    UsageCategory = Lists;

    layout
    {
        area(Content)
        {
            repeater(General)
            {
                field(ID; Rec.ID)
                {
                    ToolTip = 'Specifies the value of the ID field.', Comment = '%';
                }
                field(Title; Rec.Title)
                {
                    ToolTip = 'Specifies the value of the Title field.', Comment = '%';
                }
                field(Status; Rec.Status)
                {
                    ToolTip = 'Specifies the value of the Status field.', Comment = '%';
                }
                field("Due Date"; Rec."Due Date")
                {
                    ToolTip = 'Specifies the value of the Due Date field.', Comment = '%';
                }
                field("Estimatefd Hours"; Rec."Estimatefd Hours")
                {
                    ToolTip = 'Specifies the value of the Estimatefd Hours field.', Comment = '%';
                }
            }
        }
    }
}
