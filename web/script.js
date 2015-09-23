/**
 * Created by Luis on 23/09/15.
 */

var timer = null;

function start(){
    document.getElementById("current_date").value = new Date();
    timer = setTimeout("start()",1000)
}
