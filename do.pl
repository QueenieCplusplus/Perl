//do
//2019, 12/28, by Queenie Chen

//do程式碼區塊能把大量陳述句變成單一運算式
//可把此運算式放入另一運算式
//類似 inline 的 subroutine
//如同副常式，do結果就是最後一項執行的運算式
//方便地區帶一堆if-elseif-else
// ... means condition

q $bbb = do {

    if(...){'A'}
    elseif(...){'B'}
    else{'C'}
};

//取代如下繁雜的變數賦值

q $bbb;

if(...){

    $bbb='A';

}elseif(...){

    $bbb='B';

}else{

    $bbb='C';

}