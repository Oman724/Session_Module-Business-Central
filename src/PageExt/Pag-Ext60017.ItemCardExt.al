namespace Session_Model.Session_Model;

using Microsoft.Inventory.Item;

pageextension 60017 ItemCardExt extends "Item Card"
{
    layout
    {
        addlast("Prices & Sales")
        {
            field("Ready For Sale"; Rec."Ready For Sale")
            {
                ApplicationArea = All;
                Editable = false;
            }
        }

    }

}
