table 60003 "Student Result Subform"
{
    Caption = 'Student Result Subform';
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "Std ID"; Code[20])
        {
            Caption = 'Std ID';
        }
        field(2; "Line No."; Integer)
        {
            Caption = 'Line No.';
        }
        field(3; Subject; Enum Subject)
        {
            Caption = 'Subject';
        }
        field(4; "Marks Obtain"; Decimal)
        {
            Caption = 'Marks Obtain';

            trigger OnValidate()
            var
                StudentResultSubform: Record "Student Result Subform";
                StudentResult: Record "Student Result";
                TotalMarks: Decimal;
            begin
                StudentResultSubform.Reset();
                StudentResultSubform.SetRange("Std ID", Rec."Std ID");
                if StudentResultSubform.FindSet() then begin
                    repeat
                        TotalMarks += StudentResultSubform."Marks Obtain";
                    until StudentResultSubform.Next() = 0;
                end;

                if StudentResult.Get(Rec."Std ID") then begin
                    StudentResult."Marks Obtained" := TotalMarks;
                    StudentResult.Modify();
                end;
            end;
        }
    }
    keys
    {
        key(PK; "Std ID", "Line No.")
        {
            Clustered = true;
        }
    }
}
