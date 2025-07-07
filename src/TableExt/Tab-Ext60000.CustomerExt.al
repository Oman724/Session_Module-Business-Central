namespace Session_Model.Session_Model;

using Microsoft.Sales.Customer;

tableextension 60000 "Customer Ext" extends Customer
{
    fields
    {
        field(60000; Class; Integer)
        {
            Caption = 'Class';
            DataClassification = ToBeClassified;
        }
        field(60001; Section; Enum Section)
        {
            Caption = 'Section';
            DataClassification = ToBeClassified;
        }
        field(60002; "Father's Name"; Text[50])
        {
            Caption = 'Father''s Name';
            DataClassification = ToBeClassified;
        }
        field(60003; "Mother's Name"; Text[50])
        {
            Caption = 'Mother''s Name';
            DataClassification = ToBeClassified;
        }
        field(60004; "Student Joining Date"; Date)
        {
            Caption = 'Student Joining Date';
            DataClassification = ToBeClassified;
        }
        field(60005; "Student Left Date"; Date)
        {
            Caption = 'Student Left Date';
            DataClassification = ToBeClassified;
        }
        field(60006; "Current Ranking"; Integer)
        {
            Caption = 'Current Ranking';
            DataClassification = ToBeClassified;
        }
    }
}
