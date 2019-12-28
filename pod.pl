//2019, 12/28, Queenie Chen
//Pod
//PodSpec || Perldoc
//pod cmd paragraph
//list
//format code

//當 perl 直譯器在新的陳述句列開頭處發現 = 時，就會轉到 Pod 處理模式
//透過編譯器編譯程式碼時，perl 直譯器會跳過 = 這些說明文件，
//(1) perldoc 則僅解析 Pod 部分，略過程式碼。
//利用 % perldoc lib/PQK.pm
//利用 % pod2html lib/PQK.pm 可以將程式碼轉html

//pod cmd paragraph 稱為命令列段落

=head1 Name

=head1 Description

=head2 Functions

=cut #說明文件結束，回到程式碼

//(2)串列 list 的建立
//以 =over n 開始
//每個項目都以 =item 開頭
// 以 =back 結尾

=over 4

=item 1. PPP

=item 2. QQQ

=item 3.KKK

=back

//以上為數字分項，當然也可以用 * 代替（將顯示圓點分項符號）

//(3)說明文字內容直接加入，無須任何標記。
//(4)倘若想將說明文字變成程式碼，則直接空白鍵開頭的段落即可。

//(5)格式控制碼 formatting code 
//也被稱為內部序列 interior sequence
//格式控制碼需要大寫
//被格式化的文字內容放在角括號 < > 內

B<bold text>
C<code text>
E<named entity>
I<italic text>
L<linked text>

//倘若要格式化的內容正好有<>則用""雙引號包覆即可
//特殊字符使用 E<>

//(6)編碼則可以直接被宣告

=encoding utf8

// (7)把Pod內容加入模組後，可用 podchecker 檢查。

% podchecker lib/PQK.pm