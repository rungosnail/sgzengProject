$itemW = 520;   //每组中心图片的宽度
$itemH = 350;   //每组中心图片高度
$timer = 1000  //图片过度时间 1000毫秒
$perMask = 0.92;   //遮罩尺寸百分比

$imgBoxW = $maskW = $itemW * $perMask;  //遮罩宽度 = 图片宽度
$imgBoxH = $maskH = $itemH * $perMask;  //遮罩高度 = 图片高度
$maskOffW = $itemW * (1 - $perMask) / 2;  //遮罩偏移宽度 
$maskOffH = $imgBoxOffH = $itemH * (1 - $perMask) / 2;  //遮罩偏移高度  即   图片居中的margintop


var $itemNum = $(".item").length; // 图片数量可以随意更改

$('#banner').css("height", $itemH + "px");

$('.bannerCon').css('height', $itemH + "px");
$('.bannerCon').css("width", $itemW + "px");

$('.bannerCon .before').css("width", $maskW + "px");
$('.bannerCon .before').css("height", $maskH + "px");
$('.bannerCon .before').css('left', -($maskW + $maskOffW) + "px");
$('.bannerCon .before').css('top', $maskOffH + "px");
$('.bannerCon .before img').css('top', $imgBoxH * 0.42 + "px");



$('.bannerCon .after').css("width", $maskW + "px");
$('.bannerCon .after').css("height", $maskH + "px");
$('.bannerCon .after').css('right', -($maskW + $maskOffW) + "px");
$('.bannerCon .after').css('top', $maskOffH + "px");
$('.bannerCon .after img').css('top', $imgBoxH * 0.42 + "px");

$('.bannerCon .scroll').css('height', $itemH + "px");
$('.bannerCon .scroll').css('width', $itemNum * $itemW + "px");
$('.bannerCon .scroll').css('left', -$itemW + "px");


$('.bannerCon .scroll .item').css('width', $itemW + "px");
$('.bannerCon .scroll .item').css('height', $itemH + "px");

$('.bannerCon .scroll .item .img-box').css('width', $imgBoxW + "px");
$('.bannerCon .scroll .item .img-box').css('height', $imgBoxH + "px");
$('.bannerCon .scroll .item .img-box').css('margin-top', $imgBoxOffH + "px");
$('.bannerCon .scroll .item .img-box').css('transition', $timer / 1000 + "s");

//轮播图动画
var _index1 = 1;
//右边按钮
$('.after img').click(function () {
    _index1++;
    if (_index1 > $itemNum - 2) {
        _index1 = 1;
        $('.scroll').css('left', '0px');
        $('.scroll').animate({ left: -_index1 * $itemW }, $timer);
    } else {
        $('.scroll').animate({ left: -_index1 * $itemW }, $timer);
    }
    smalImg(_index1);
    //console.log("_index1：" + _index1);
    _2D();

});
$(".nextbut").click(function () {
    _index1++;
    if (_index1 > $itemNum - 2) {
        _index1 = 1;
        $('.scroll').css('left', '0px');
        $('.scroll').animate({ left: -_index1 * $itemW }, $timer);
    } else {
        $('.scroll').animate({ left: -_index1 * $itemW }, $timer);
    }
    smalImg(_index1);
    // console.log("_index1：" + _index1);
    _2D();
});

//左边按钮
$('.before img').click(function () {
    _index1--;
    if (_index1 < 1) {
        _index1 = $itemNum - 2;
        $('.scroll').css('left', -$itemW * ($itemNum - 1) + "px");
        $('.scroll').animate({ left: -_index1 * $itemW }, $timer);
    } else {
        $('.scroll').animate({ left: -_index1 * $itemW }, $timer);
    }
    smalImg(_index1);
    //console.log("_index1：" + _index1);
    _2D();
});

$('.prevbut').click(function () {
    _index1--;
    if (_index1 < 1) {
        _index1 = $itemNum - 2;
        $('.scroll').css('left', -$itemW * ($itemNum - 1) + "px");
        $('.scroll').animate({ left: -_index1 * $itemW }, $timer);
    } else {
        $('.scroll').animate({ left: -_index1 * $itemW }, $timer);
    }
    smalImg(_index1);
    // console.log("_index1：" + _index1);
    _2D();
});




//图片变形scale
function _2D() {
    $.each($('.scroll .item'), function () {
        if ($(this).index() == _index1) {
            $('.scroll .item .img-box').css({
                "transform": "scale(1)",
                "-ms-transform": "scale(1)", /* IE 9 */
                "-moz-transform": "scale(1)", /* Firefox */
                "-webkit-transform": "scale(1)", /* Safari and Chrome */
            });
            $(this).children('.img-box').css({
                "transform": "scale(1.1)",
                "-ms-transform": "scale(1.1)", /* IE 9 */
                "-moz-transform": "scale(1.1)", /* Firefox */
                "-webkit-transform": "scale(1.1)", /* Safari and Chrome */

            });
        }
    });
}

_2D();
function smalImg(index) {

    var array = $("#smallimg li")
    $(array).each(function () {
        $(this).removeClass();
    });
    $($("#smallimg li").eq(index - 1)).attr("class", "oncur");
    var icount = $("#smallimg li").length;
    if (icount > 6) {
        if (index / 6 > 1 && (index%6)!=0) {
            for (var i = 0; i < (parseInt(index / 6) * 6); i++) {
                $($("#smallimg li").eq(i)).hide();
            }
            if (icount > (parseInt(index / 6)+1) * 6) {
                for (var m = (parseInt(index / 6)) * 6; m < (parseInt(index / 6) + 1) * 6; m++) {
                    $($("#smallimg li").eq(m)).show();
                }
            } else {
                for (var m = (parseInt(index / 6)) * 6; m < icount; m++) {
                    $($("#smallimg li").eq(m)).show();
                }
            }
        } else if (index / 6 > 1 && (index % 6) == 0) {
            $("#smallimg li").hide();
            for (var m = (parseInt(index / 6) - 1) * 6; m < parseInt(index / 6)*6; m++) {
                $($("#smallimg li").eq(m)).show();
            }
            $($("#smallimg li").eq(index - 1)).attr("class", "oncur");
        }


     
        if (index / 6 <= 1) {
            //$($("#smallimg li").hide();
            for (var i = 0; i < 6; i++) {
                $($("#smallimg li").eq(i)).show();
            }

            for (var m = 0; m < icount - 6; m++) {
                $($("#smallimg li").eq(m + 7)).hide();
            }
        }
        //if (parseInt(icount>6)) {
        //    for (var i = 0; i < index - 3; i++) {
        //        $($("#smallimg li").eq(i)).hide();
        //    }
        //}
    }

}

$($("#smallimg li").eq(0)).attr("class", "oncur");

