// -----------------------------------------------------------------------------------------
//
//      Organization:   Stakem Research
//      Author:         Fredrick Stakem
//      Date:           8.28.16
//
// -----------------------------------------------------------------------------------------


function getScrollPercent() {
    var h = document.documentElement; 
    var b = document.body;
    var st = 'scrollTop';
    var sh = 'scrollHeight';

    return h[st]||b[st] / ((h[sh]||b[sh]) - h.clientHeight) * 100;
}