var myCity = "上海市";
var myGeo = new BMap.Geocoder();
var map = new BMap.Map();
var pointA
// map.centerAndZoom(myCity,12);  

function myFun(result){
    myCity = result.name;
}
var BCity = new BMap.LocalCity();
BCity.get(myFun);

function computeDist(options){
    var pointB = options.attr('data-address');
    myGeo.getPoint(pointB, function(point){
        if (point) {
            options.text(((map.getDistance(pointA,point))/1000).toFixed(1)); 
            if (hackerList){
                hackerList.reIndex();             
            }
        } else {
            options.text('未知距离！');
            if (hackerList){
                hackerList.reIndex();
            }
        }
    }, myCity);
}

$(document).ready(function(){
    // 浏览器定位
    var geolocation = new BMap.Geolocation();
    geolocation.getCurrentPosition(function(r){
        if(this.getStatus() == BMAP_STATUS_SUCCESS){
            pointA = r.point;           
            $("span[id^='my-data-']").each(function(){
               computeDist($(this));
            });
        }
        else {
          alert('failed'+this.getStatus());
        }        
    },{enableHighAccuracy: true})
    // keep or not
    if (!localStorage.getItem("jzNanny")){
        $('span.keep').removeClass('hidden');
    } else {
        var arr = localStorage.getItem("jzNanny").split(',');
        var index = $.inArray($('span.keep').attr('data-id'),arr);  
        if (index>=0){
            $('span.remove').removeClass('hidden');
        }  else {
            $('span.keep').removeClass('hidden');
        }
    }
    // fixed-price
    $("#salary").change(function(){  
        if ($(this).val() == 'fixed'){
            $('.fiexed-price').removeClass('hidden');
        } else {
            $('.fiexed-price').addClass('hidden');
        }      
    });      
});   
  // list.js
var options = {
    valueNames: ['name', 'job', 'age', 'distance','city', 'salary', 'skill']
};
var hackerList = new List('hacker-list', options);    

// $('li.filter-age').click(function(){
//     var v = Number($(this).attr('value'))
//     hackerList.filter(function(item){
//         if (v == 19){
//             if (item.values().age < 20){ return true;} else {return false;}
//         } else if (v == 50){
//             if (item.values().age >= 50){ return true;} else {return false;}
//         } else {
//             if ((item.values().age >= v && item.values().age < v + 9) || v == 0){ 
//                 return true;
//             } else {
//                 return false;
//             }                    
//         }
//     });        
//     $('#ageModal').modal('hide');
// });

// $('li.filter-job').click(function(){
//     var v = Number($(this).attr('value'))
//     hackerList.filter(function(item){
//         var arr = eval(item.values().job)
//         if (v == '99'){
//             return true;
//         } else {
//             if (typeof arr == 'object'){
//                 if (arr.indexOf(v) >= 0){
//                     return true
//                 } else {return false}
//             } else{
//                 if (arr == v){
//                     return true
//                 } else {return false}
//             }
//         }
//     });        
//     $('#jobModal').modal('hide');
// });

// $('li.filter-skill').click(function(){
//     var v = Number($(this).attr('value'))
//     hackerList.filter(function(item){
//         var arr = eval(item.values().skill)
//         if (v == '99'){
//             return true;
//         } else {
//             if (typeof arr == 'object'){
//                 if (arr.indexOf(v) >= 0){
//                     return true
//                 }
//             } else{
//                 if (arr == v){
//                     return true
//                 }
//             }
//         }
//     });        
//     $('#skillModal').modal('hide');
// });

// $('li.filter-salary').click(function(){
//     var v = $(this).attr('value')
//     hackerList.filter(function(item){
//         var s = item.values().salary
//         if (v == '99' || s == v){
//             return true;
//         } else {
//             return false;
//         }
//     });        
//     $('#salaryModal').modal('hide');
// });

// $('li.nanny').click(function(){
//     window.location.href="/a/n/"+$(this).attr('data-id'); 
// });

$('i.fa-chevron-left').click(function(){
    window.history.back();
});

$('div.more-job').click(function(){
    $('div.hidden-job').toggle(1000);
});

// store items
$('span.keep').click(function(){
    if(window.localStorage){    
        var jn =localStorage.getItem("jzNanny");
        if (jn) {
            var arr = jn.split(',')
            var id = $(this).attr('data-id')
            if ($.inArray(id, arr) == -1){ 
                localStorage.jzNanny = jn + ',' + $(this).attr('data-id');
                alert('收藏成功!');
                $('span.keep').addClass('hidden');
                $('span.remove').removeClass('hidden');
            }
        } else {
            localStorage.setItem("jzNanny", $(this).attr('data-id'));
            alert('收藏成功!');
            $('span.keep').addClass('hidden');
            $('span.remove').removeClass('hidden');
        }
     }else
        {   alert("暂不支持收藏！"); }
});
$('span.remove').click(function(){
    var arr = localStorage.getItem("jzNanny").split(',');
    var index = $.inArray($(this).attr('data-id'),arr);
    if (index>=0){
        arr.splice(index,1);
        localStorage.jzNanny = arr.toString();
        alert('取消收藏成功!');
        $('span.remove').addClass('hidden');
        $('span.keep').removeClass('hidden');
    }
});
$('div.clear').click(function(){
    localStorage.removeItem("jzNanny");
});
$('.mykeep').click(function(){
    window.location.href="/a/"+$(this).attr('data-id')+"/n?keep="+(localStorage.getItem("jzNanny") || ""); 
});
$('span.all').click(function(){
    window.location.href="/a/"+$(this).attr('data-id')+"/n" 
});

