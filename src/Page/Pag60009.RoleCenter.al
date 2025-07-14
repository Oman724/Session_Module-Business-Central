namespace Session_Model.Session_Model;
using System.Visualization;

page 60009 "Role Center"
{
    ApplicationArea = All;
    Caption = 'Role Center';
    PageType = RoleCenter;

    layout
    {
        // area(RoleCenter)
        // {
        //     part(Headline; "Headline RC Business Manager")
        //     {
        //         ApplicationArea = All;
        //     }
        //     part("As Your Wish"; "Cue Test")
        //     {
        //         ApplicationArea = All;
        //     }
        // }
        area(rolecenter)
        {
            part(TaskCues; "Task Cue")
            {
                ApplicationArea = All;
            }


            part(ItemCues; "Item Status Cues")
            {
                ApplicationArea = All;
            }
        }
    }
    actions
    {
        area(processing)
        {
            action("Open Task List")
            {
                ApplicationArea = All;
                RunObject = Page "Task Cue ListPage";
            }
        }
    }
}
