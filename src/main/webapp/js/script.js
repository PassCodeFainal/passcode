$(function () {
        $(".navMenu li").hover(function () {
            $(this).find("li").stop().slideToggle();
    
        });
    });
function fNewWin(name, width, height)  {
	 cw=screen.availWidth; 
	 ch=screen.availHeight;

	 sw=width;
	 sh=height;

	 ml=(cw-sw)/2;
	 mt=(ch-sh)/2;

	 NewWindow=window.open(name,'newWin','width='+sw+',height='+sh+',top='+mt+',left='+ml+',toobar=no,scrollbars=yes,menubar=no,status=no ,directories=no,');
	 
}

function close() {
	NewWindow.close();
}
