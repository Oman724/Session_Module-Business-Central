namespace Session_Model.Session_Model;

page 60000 "Student Result Page"
{
    ApplicationArea = All;
    Caption = 'Student Result Page';
    PageType = List;
    SourceTable = "Student Result";
    UsageCategory = Administration;
    CardPageId = "Student Result Card";

    layout
    {
        area(Content)
        {
            repeater(General)
            {
                field("Std ID"; Rec."Std ID")
                {
                    ToolTip = 'Specifies the value of the Std ID field.', Comment = '%';
                }
                field("Std Name"; Rec."Std Name")
                {
                    ToolTip = 'Specifies the value of the Std Name field.', Comment = '%';
                }
                field("Total Marks"; Rec."Total Marks")
                {
                    ToolTip = 'Specifies the value of the Total Marks field.', Comment = '%';
                }
                field("Marks Obtained"; Rec."Marks Obtained")
                {
                    ToolTip = 'Specifies the value of the Marks Obtained field.', Comment = '%';
                }
                field(Percentage; Rec.Percentage)
                {
                    ToolTip = 'Specifies the value of the Percentage field.', Comment = '%';
                }

                field(Remarks; Rec.Remarks)
                {
                    // Visible = true;
                    // ShowMandatory = true;
                    // Editable = false;
                    // Enabled = false;

                    ToolTip = 'Specifies the value of the Remarks field.', Comment = '%';
                }
                field(Class; Rec.Class)
                {
                    ToolTip = 'Specifies the value of the Class field.', Comment = '%';
                }
                field("Class Teacher"; Rec."Class Teacher")
                {
                    ToolTip = 'Specifies the value of the Class Teacher field.', Comment = '%';
                }
                field("Class Teacher Id"; Rec."Class Teacher Id")
                {
                    ToolTip = 'Specifies the value of the class teacher id.', Comment = '%';
                }
            }
        }
    }

    //     trigger OnOpenPage()
    //     var
    //         myInt: Integer;
    //     begin
    //         Rec.SetRange("Percentage", 80.00, 90.00);
    //         // Rec.SetFilter("Percentage", '75.00..90.00');
    //     end;




    // actions
    // {

    //     area(Processing)
    //     {
    //         action(Modify)
    //         {
    //             ApplicationArea = all;
    //             Promoted = true;
    //             PromotedCategory = Process;
    //             PromotedIsBig = true;
    //             trigger OnAction()
    //             var
    //                 Studentresult: Record "Student result";
    //             begin
    //                 Studentresult.Reset();
    //                 Studentresult.SetRange("Std ID", rec."Std ID");
    //                 if Studentresult.FindFirst() then
    //                     Studentresult.Remarks := Rec.Remarks + ' ' + Format(rec."Marks Obtained");
    //                 Studentresult.Modify();
    //             end;
    //         }
    //     }
    // }




    actions
    {
        area(Processing)
        {
            action(ModifyNameWithforloop)
            {
                ApplicationArea = all;
                Promoted = true;
                PromotedCategory = Process;
                PromotedIsBig = true;
                trigger OnAction()
                var
                    Studentresult: Record "Student Result";
                begin
                    // Studentresult.Reset();
                    // Studentresult.SetRange("S?td ID", rec."Std ID");
                    if Studentresult.FindSet() then
                        repeat
                            Studentresult."Class Teacher Name" := 'Biswas';
                            Studentresult.Modify();
                        until Studentresult.Next() = 0;
                end;
            }
        }
    }
}