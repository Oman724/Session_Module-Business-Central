table 60004 Task
{
    Caption = 'Task';
    DataClassification = ToBeClassified;

    fields
    {
        field(1; ID; Integer)
        {
            Caption = 'ID';
        }
        field(2; Title; Text[100])
        {
            Caption = 'Title';
        }
        field(3; Status; Option)
        {
            Caption = 'Status';
            OptionMembers = Open,Completed;
        }
        field(4; "Due Date"; Date)
        {
            Caption = 'Due Date';
        }
        field(5; "Estimatefd Hours"; Decimal)
        {
            Caption = 'Estimatefd Hours';
        }
    }
    keys
    {
        key(PK; ID)
        {
            Clustered = true;
        }
    }
}
