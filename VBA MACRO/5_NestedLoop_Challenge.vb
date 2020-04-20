Sub loopchallenge()
Dim index1, index2 As String
Dim i, counter As Integer
Dim sheet1counter As Integer
'=========================
 With Application
    .ScreenUpdating = False
    .DisplayAlerts = False
    
Dim RecCount As Integer
i = 2
sheet1counter = 3
counter = 0
Sheets("Customers 2").Activate
RecCount = Application.CountA(Range("A:A"))
Sheets("Customers 1").Activate
index1 = Cells(sheet1counter, 1).Value
Do While i <= RecCount
    Sheets("Customers 2").Activate
    index2 = Cells(i, 1).Value
    If index1 = index2 Then
        counter = counter + 1
        Sheets("Customers 1").Activate
        Rows(1).Delete
		i = i -1 ' row is getting deleted so one row ahead becomes current row
    End If
    i = i + 1
Loop
MsgBox ("There are " & counter & " duplicate entries found")
End Sub

