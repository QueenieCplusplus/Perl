//2019, 12/28, by Queenie Chen
// use 能將模組的某些函式引入現行的命名空間中
// 另外，只能使用副檔名 .pm 代表 Perl Modules，而非 .pl，否則 Perl 會找不到

require "PPP/QQQ/KKK.pm"; 

// 等於

use PPP::QQQ::KKK kmethod(arg1 arg2 arg3);

// 這裡的 use 被 Perl 當作 Begin 程式碼區塊，內部有 require 檔案 和方法呼叫

Begin{
    // 冒號代表本地目錄分隔符號 native dir separator (類Unix系統)
    require PPP::QQQ::KKK;
    PPP::QQQ::KKK->import(kmethod(arg1 arg2 arg3));
}


