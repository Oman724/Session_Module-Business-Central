table 60007 "Item Cue Buffer"
{
    Caption = 'Item Cue Buffer';
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "Primary Key"; Code[20])
        {
            Caption = 'Primary Key';
        }
        field(2; "Not Ready item"; Integer)
        {
            Caption = 'Not Ready item';
            FieldClass = FlowField;
            CalcFormula = count(Item where("Ready For Sale" = const(false), "No." = const('')));
        }
        field(3; "Ready Item"; Integer)
        {
            Caption = 'Ready Item';
            FieldClass = FlowField;
            CalcFormula = count(Item where("Ready For Sale" = const(true)));
        }
    }
    keys
    {
        key(PK; "Primary Key")
        {
            Clustered = true;
        }
    }
}
