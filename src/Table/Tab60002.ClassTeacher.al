table 60002 "Class Teacher"
{
    Caption = 'Class Teacher';
    DataClassification = ToBeClassified;

    fields
    {
        field(1; ID; Code[20])
        {
            Caption = 'ID';
        }
        field(2; Name; Text[50])
        {
            Caption = 'Name';
        }
        field(3; Class; Integer)
        {
            Caption = 'Class';
        }
        field(4; "No. Series"; Code[20])
        {
            Caption = 'No. Series';
        }
        field(5; Address; Text[100])
        {
            Caption = 'Address';
        }
        field(6; "Phone No."; Text[20])
        {
            Caption = 'Phone No.';
        }
        field(7; "E-Mail"; Text[80])
        {
            Caption = 'E-Mail';
        }
        field(8; JoiningDate; Date)
        {
            Caption = 'JoiningDate';
        }
        field(9; LeftDate; Date)
        {
            Caption = 'LeftDate';
        }
        field(10; "Student Id"; Code[20])
        {
            Caption = 'StudentId';
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
