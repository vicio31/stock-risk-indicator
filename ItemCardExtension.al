pageextension 50101 ItemCardExtension extends "Item Card"
{
    layout
    {
        addlast(InventoryGrp)
        {
            field(MinimumStock; Rec.MinimumStock)
            {
                ApplicationArea = All;
                Caption = 'Minimum Stock';
            }
        }
    }
}