namespace Session_Model.Session_Model;

using Microsoft.Inventory.Item;

tableextension 60002 "Item Ext" extends Item
{
    fields
    {
        field(60000; Class; Integer)
        {
            Caption = 'Class';
            DataClassification = ToBeClassified;
        }
    }
}
