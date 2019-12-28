//2019, 12/28, by Queenie Chen
// import 匯入常式

// 從現行套件進入呼叫者所在套件

sub import {

    for(qw(filename basename fileparse)) {

        no strict 'refs';
        *{"main::$_"} = \&$_
    }
}

// Exporter 模組內有標準的 import
// 為了避免以上繁瑣的 code
// 可直接把 匯出模組加到上層類別：

package PKQ::Utils;
use parent qw(Exporter);

或是

use v5.8.3;
package PKQ::Utils;
use Exporter qw(import);

// 如上，可從自上層的匯出模組繼承打算呼叫的 import
// 由上層提供 import 常式
// 它知道如何接收一組 sub routine，並且自動匯出到呼叫者的套件

