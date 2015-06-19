/**
 * Created by vk on 6/18/15.
 */

function saveQuestion(){
    var data = ($("form" ).serialize());
    console.log(data);
    var url = 'master.php?'+data;
    console.log(url);
    $.get(url, {
        action:'FrageSpeichern'

    }, function(data){
        console.log(data);
    }, 'json')
}