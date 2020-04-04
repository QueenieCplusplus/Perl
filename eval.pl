//eval 
//2019, 12/28, by Queenie Chen

//除了偵測錯誤外
//evel 還能接受字串運算式作為參數
//直到執行階段才編譯和執行字串內容
//雖然好用但很危險
//當字串內有不可靠資料的時候


eval '$sum = 2 + 2';
print " The sum is $sum\n";


my $result = eval "2+2";
print "the result is $result\n"
