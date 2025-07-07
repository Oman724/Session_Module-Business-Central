table 60001 "Sales Payment Method"
{
    Caption = 'Sales Payment Method';
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "Document No."; Code[20])
        {
            Caption = 'Document No.';
        }
        field(2; "Line No. "; Integer)
        {
            Caption = 'Line No. ';
        }
        field(3; "Payment Method Code"; Code[20])
        {
            Caption = 'Payment Method Code';
        }
        field(4; Amount; Decimal)
        {
            Caption = 'Amount';
        }
        field(5; "Pre-Assign No."; Code[20])
        {
            Caption = 'Pre-Assign No.';
        }
        field(6; "Posting Date"; Date)
        {
            Caption = 'Posting Date';
        }
        field(7; Posted; Boolean)
        {
            Caption = 'Posted';
        }
        field(8; "User Id"; Text[50])
        {
            Caption = 'User Id';
        }
    }
    keys
    {
        key(PK; "Document No.", "Line No. ")
        {
            Clustered = true;
        }
    }


}
