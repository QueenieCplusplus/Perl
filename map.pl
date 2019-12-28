//map 兩串列互相轉換
//2019, 12/28, by Queenie Chen

//不像 grep，map 每次轉換，是在串列而非純量的語境下執行運算
//所以要避免在純量 scalar 語境下執行 map
//而且輸入一項目，不限定只輸出一項目
//使用雜湊 hash 紀錄鍵值對

q inputNum = (1, 2, 3, 5, 7, 9);
q %hash = map { $_, 10* $_ } @inputNum;


