/* 
- tableextension = keyword AL -> serve per estendere una tabella esistente
- 50100 = ID dell'oggetto -> deve stare dentro il range definito in app.json
- ItemTableExtension = nome dell'oggetto (scelto da me, deve essere chiaro)
- extends Item = sto estendendo la tabella standard "Item" (Articoli)
*/

tableextension 50100 ItemTableExtension extends Item
{
    // blocco fields -> qui definisco i nuovi campi che aggiungo alla tabella
    fields
    {
        /*
        - field = definizione di un nuovo campo
        - 50101 = ID del nuovo campo -> deve essere sempre nel range (50100-50199)
        - MinimumStock = nome tecnico (usato nel codice)
        - Integer = tipo di dato (numero intero, corretto per la quantità che mi serve)
        */
        field(50101; MinimumStock; Integer)
        {
            /*
            - Caption = nome visibile all'utente dentro business central 
                Questo è IMPORTANTISSIMO perchè BC è un sistema business-oriented
                L'utente vedrà "Minimum Stock" e non "MinimumStock"
            */
            Caption = 'Minimum Stock';

            /*
            - DataClassification = abbligatorio in AL
                Serve per classificare il tipo di dato (privacy / GDPR)
            - ToBeClassification va bene per ora
            */
            DataClassification = ToBeClassified;
        }
    }
}