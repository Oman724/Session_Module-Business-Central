namespace Session_Model.Session_Model;

using Microsoft.Inventory.Item;

pageextension 60002 Itempageext extends "Item Card"
{
    layout
    {
        addafter(Item)
        {
            group(Detail)
            {
                field(Class; Rec.Class)
                {
                    ApplicationArea = All;
                }
            }
        }
    }
}
