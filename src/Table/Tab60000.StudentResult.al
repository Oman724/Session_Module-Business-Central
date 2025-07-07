table 60000 "Student Result"
{
    Caption = 'Student Result';
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "Std ID"; Code[20])
        {
            Caption = 'Std ID';
            // TableRelation = Customer."No." where(Comment = const(false));

            // TableRelation = Customer."No." where("Location Code" = const('WHITE'));

            trigger OnValidate()
            var
                ClassTeacher: Record "Class Teacher";
            begin
                if ClassTeacher.Get("Class Teacher") then
                    // "Class Teacher" := ClassTeacher.ID;
                    Validate("Class Teacher Name", "ClassTeacher".Name);
                "Class Teacher Address" := ClassTeacher.Address;
            end;


            trigger OnLookup()
            var
                customer: Record Customer;
            begin
                customer.reset();
                if page.RunModal(Page::"Customer List", customer) = Action::LookupOK then
                    "Std ID" := Customer."No.";
                "Std Name" := Customer."Name";

            end;


        }

        field(2; "Std Name"; Text[50])
        {
            Caption = 'Std Name';
        }
        field(3; "Total Marks"; Decimal)
        {
            Caption = 'Total Marks';
        }
        field(4; "Marks Obtained"; Decimal)
        {
            Caption = 'Marks Obtained';
        }
        field(5; Percentage; Decimal)
        {
            Caption = 'Percentage';
        }
        field(6; Remarks; Text[100])
        {
            Caption = 'Remarks';
        }
        field(7; Class; Integer)
        {
            Caption = 'Class';
            // trigger OnValidate()
            // var
            //     ClassTeacher: Record "Class Teacher";
            // begin
            //     if ClassTeacher.Get(Class) then
            //         // "Class Teacher" := ClassTeacher.ID;
            //         Validate("Class Teacher Name", "ClassTeacher".Name);
            //     "Class Teacher Address" := ClassTeacher.Address;
            // end;
        }
        field(8; "Class Teacher"; Code[20])
        {
            Caption = 'Class Teacher';
            FieldClass = FlowField;
            CalcFormula = lookup("Class Teacher".ID where("Student Id" = field("Std ID")));
        }
        field(9; "Class Teacher Name"; Text[100])
        {
            Caption = 'Class Teacher Name';
        }
        field(10; "Class Teacher Address"; Text[100])
        {
            Caption = 'Class Teacher Address';
        }
        field(11; "Class Teacher Id"; Text[100])
        {
            Caption = 'Class teacher Address';
        }
    }
    keys
    {
        key(PK; "Std ID", "Class")
        {
            Clustered = true;
        }
    }
}



