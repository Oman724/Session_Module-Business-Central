namespace Session_Model.Session_Model;

using Microsoft.Inventory.Item;

pageextension 60016 "Item List Ext" extends "Item List"
{

    // field(Ready)
    // {
    //     ApplicationArea = All;
    // }

    actions
    {
        addlast(Processing)
        {

            action("Mark As Ready")
            {
                ApplicationArea = all;
                Promoted = true;
                PromotedCategory = Process;
                PromotedIsBig = true;
                Image = TransferOrder;

                trigger OnAction()
                begin
                    Rec."Ready For Sale" := true;
                    Rec.Modify();
                    Message('Item Marked as Ready');
                end;
            }

            // action("Unmark As Ready")
            // {
            //     ApplicationArea = all;
            //     Promoted = true;
            //     PromotedCategory = Process;
            //     PromotedIsBig = true;

            //     // Visible = ShowUnReadyAction;
            //     Image = TransferOrder;
            //     trigger OnAction()
            //     begin
            //         Rec."Ready For Sale" := false;
            //         Rec.Modify();
            //         Message('Item marked as Not Ready');
            //     end;
            // }

        }

    }
    // var
    //     ShowReadyAction: Boolean;
    //     ShowUnReadyAction: Boolean;

    // trigger OnOpenPage()
    // begin
    //     if Rec.GetFilter("Ready For Sale") = 'true' then begin
    //         ShowReadyAction := true;
    //         ShowUnreadyAction := false;
    //     end else
    //         if Rec.GetFilter("Ready for Sale") = 'false' then begin
    //             ShowReadyAction := true;
    //             ShowUnreadyAction := false;
    //         end else begin
    //             ShowReadyAction := false;
    //             ShowUnreadyAction := false;
    //         end;
    // end;


}
