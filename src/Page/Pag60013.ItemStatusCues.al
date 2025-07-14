namespace Session_Model.Session_Model;
using Microsoft.Inventory.Item;

page 60013 "Item Status Cues"
{
    ApplicationArea = All;
    Caption = 'Item Status Cues';
    PageType = CardPart;
    SourceTable = "Item Cue Buffer";

    layout
    {
        area(Content)
        {
            cuegroup(ItemStatus)
            {
                Caption = 'Item Status';

                field("Not Ready item"; Rec."Not Ready item")
                {
                    DrillDown = true;
                    ToolTip = 'Specifies the value of the Not Ready item field.', Comment = '%';
                    ApplicationArea = all;

                    trigger OnDrillDown()
                    var
                        ItemRec: Record Item;
                    begin
                        ItemRec.SetFilter("Ready For Sale", '%1', false);
                        Page.Run(Page::"Item List", ItemRec);
                    end;
                }
                field("Ready Item"; Rec."Ready Item")
                {
                    ToolTip = 'Specifies the value of the Ready Item field.', Comment = '%';
                    DrillDown = true;
                    ApplicationArea = All;

                    trigger OnDrillDown()
                    var
                        ItemRec: Record Item;
                    begin
                        ItemRec.SetFilter("Ready For Sale", '%1', true);
                        Page.Run(Page::"Item List", ItemRec);
                    end;
                }
            }
        }


    }

    trigger OnOpenPage()
    var
        ItemRec: Record Item;
    begin
        ItemRec.SetFilter("Ready for Sale", '%1', false);
        ReadyCount := ItemRec.Count();

        ItemRec.SetFilter("Ready for Sale", '%1', true);
        NotReadyCount := ItemRec.Count();



    end;

    var

        NotReadyCount: Integer;
        ReadyCount: Integer;
}
