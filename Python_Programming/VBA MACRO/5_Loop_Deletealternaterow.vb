Sub loopchallenge2()
Dim i As Integer
Dim countrange As Integer

i = 3
countrange = Application.CountA(Range("A:A"))

Do While i <= countrange
    Rows(i).Delete ' Cells(i,1).EntireRow.Delete  Does the same job
   'i = i - 1
   'i = i + 2  'Since every other row must be deleted
   i = i + 1 ' Instead of above 2 lines, we can give one line ! Does the same job.
Loop

End Sub