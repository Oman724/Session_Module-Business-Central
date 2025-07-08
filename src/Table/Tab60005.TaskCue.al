table 60005 "Task Cue"
{
    Caption = 'Task Cue';
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "Code"; Code[20])
        {
            Caption = 'Code';
        }
        field(2; Total_Tasks; Integer)
        {
            Caption = 'Total_Tasks';
            FieldClass = FlowField;
            CalcFormula = count(Task);
        }
        field(3; Completed_Tasks; Integer)
        {
            Caption = 'Completed_Tasks';
            FieldClass = FlowField;
            CalcFormula = Count("Task" where(Status = const(Completed)));

        }
        field(4; Open_Tasks; Integer)
        {
            Caption = 'Open_Tasks';
            FieldClass = FlowField;
            CalcFormula = count("Task" where(Status = const(Open)));
        }
        field(5; Estimated_Hours; Decimal)
        {
            Caption = 'Estimated_Hours';
            FieldClass = FlowField;
            CalcFormula = sum("Task"."Estimatefd Hours");
        }
    }
    keys
    {
        key(PK; "Code")
        {
            Clustered = true;
        }
    }
}
