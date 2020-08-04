var $grid = $('.list-wrapper').imagesLoaded( function() {
	$(".loader").hide();
	$grid.css("visibility","visible")
  $grid.masonry({
		itemSelector: '.list',
		columnWidth: '.list-sizer',
		percentPosition: true
  });
});
//masonry 적용 사이트에서 붙여넣기


/* var grid = GridStack.init({
	animate: true,
}); */

var id, seq;

function onDownload() {
	// /gallery/download/3?seq=2, /gallery/download/3?seq=
	location.href = '/gallery/download/'+id+'?seq='+seq;
}

function onModal(idx) {
	id = idx;
	$.get('/gallery/view/'+id, function(r){
		var src, src2;
		if(r.savefile) {
			src = '/upload/' + r.savefile.substr(0, 6) + '/' + r.savefile;
			$(".modal-wrapper").find(".def-img").attr("src", src);
			$(".modal-wrapper").find(".bt-def").show();
		}
		if(r.savefile2) {
			src2 = '/upload/' + r.savefile2.substr(0, 6) + '/' + r.savefile2;
			$(".modal-wrapper").find(".hover-img").attr("src", src2);
			$(".modal-wrapper").find(".bt-hover").show();
		}
		$(".modal-wrapper").css("display", "flex");
	});
}

$(".modal-wrapper .bt-close").click(function(){
	$(".modal-wrapper").css("display", "none");
});

$(".modal-wrapper .bt-def").click(function(){
	$(".modal-wrapper").find(".def-img").stop().animate({"opacity":1},500)
	$(".modal-wrapper").find(".hover-img").stop().animate({"opacity":0},500)
	$(".modal-wrapper").find(".modal-pager > i").removeClass("active");
	$(this).addClass("active");
	seq = "";
}).trigger("click");

$(".modal-wrapper .bt-hover").click(function(){
	$(".modal-wrapper").find(".def-img").stop().animate({"opacity":0},500)
	$(".modal-wrapper").find(".hover-img").stop().animate({"opacity":1},500)
	$(".modal-wrapper").find(".modal-pager > i").removeClass("active");
	$(this).addClass("active");
	seq = "2";
});





function onGallerySubmit(f) {
	var title = f.title.value.trim();
	var writer = f.writer.value.trim();
	if(title == '') {
		alert("제목을 작성해 주세요.");
		f.title.focus();
		return false;
	}
	if(writer == '') {
		alert("작성자를 기재해 주세요.");
		f.writer.focus();
		return false;
	}
	return true;
}