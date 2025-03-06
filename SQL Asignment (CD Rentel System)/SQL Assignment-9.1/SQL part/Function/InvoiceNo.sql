Create Function fnInvoiceNo
(@InvoiceNo Varchar(4))
Returns int

Begin 

Return(Select InvoiceNo    From Invoice  
Where  InvoiceNo=@InvoiceNo)

End