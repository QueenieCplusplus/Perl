//2019, 12/28, by Queenie Chen
// require 可保障只讀入一次

// 適用情境
//當 QQQ.pm 為了共用任務，本身已經載入 PPP.pm 模組
//因而使得 PPP.pm 在程式中被載入兩次
//第一次 perl 直接讀進該檔案。
//然後在 QQQ.pm 中又再次處理同一檔案
//再次定義 PPP
// 可能會被警告著其副常式被重新定義

require 'QQQ.pm';
require 'PPP.pm'

// require 運算符號追蹤了 Perl 已讀入哪些文件
// 倘若已經讀取過，就會忽略後續對同一檔案 require 的操作
// 檔案的最後一個運算式必須回傳回真值，如1，讓require知道執行成功
// 倘若載入的檔案中有語法錯誤，會自動以 die 中斷執行，無須寫很多 die $@ if $@
