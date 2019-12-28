//grep 篩選
//2019, 12/28, by Queenie Chen

//此符號接受兩個引數，一個是 testing expression，另一個是 list 的 val
//把 list 中每個項目依序放入 $_ 變數容器
//並在 scalar context 純量語境下，執行測試運算式
//倘若結果為真，則 grep 將 $_ 傳給輸出串列 output list，如等號的左側 @large5


q @inputNum = (1, 2, 3, 4, 7, 9, 0);
q @large5 = grep $_ > 5, @inputNum; 


//執行 grep 時，它將 $_ 原有的值暫存別處，
//所以 grep 借用這變數
//用完就會將原有值回原回去
//$_ 不僅僅是複製資料，實際上元素的別名 alias
//如同 foreach 

//倘若測試運算式相當複雜
//則放入 subroutine
//符號 sub

q @sum = grep sumIsOdd($_), @inputNum;

sub sumIsOdd{
  
    //...
    return $sum %2;
}
