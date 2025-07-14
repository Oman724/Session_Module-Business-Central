namespace Session_Model.Session_Model;

using Microsoft.Inventory.Item;

tableextension 60006 ItemEXT extends Item
{
    fields
    {
        field(60006; "Ready For Sale"; Boolean)
        {
            Caption = 'Ready For Sale';
            DataClassification = ToBeClassified;
        }
    }
}
