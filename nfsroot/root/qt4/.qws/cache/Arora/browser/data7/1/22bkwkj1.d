   �      ahttp://init.phpwind.com/init.php?sitehash=10UFcHUgMABl1eVFIDVFYAU1RVWwxSUFYOBAVTDQgAXQc&v=7.0&c=0    �����    �����         
     O K           �      Content-Type   	text/html   Vary   Accept-Encoding   hostname   : init36   Content-Encoding   gzip 
agt		= navigator.userAgent.toLowerCase();
is_ie	= (agt.indexOf("msie") != -1) && (agt.indexOf("opera") == -1);
is_gecko= navigator.product == "Gecko";

function ietruebody2(){
	return (document.compatMode && document.compatMode!="BackCompat")? document.documentElement : document.body;
}
function showjs(position,unioncode,v){
	if(position=='banner'){
		parentobj=document.getElementById('banner');
		if(parentobj){
			parentobj.innerHTML=unioncode;
		}
	}else if(position=='middle'){
		parentobj=document.getElementById('infobox');
		if(parentobj){
			parentobj.parentNode.innerHTML=parentobj.parentNode.innerHTML.replace(/<!--ads begin-->/i,'<div style="margin-top:7px;"><center>'+unioncode+'</center></div>');
		}
		return;
	}else if(position=='footer'){
		parentobj=document.getElementById('bottom');
		if(parentobj){
			parentobj.innerHTML='<center>' + unioncode + '</center>';
		}
	}else if(position=='atctop'){
		parentobj=document.getElementById('read_tpc');
		if(parentobj){
			parentobj.innerHTML='<div>' + unioncode + '</div><br />' + parentobj.innerHTML;
		}
		return;
	}else if(position=='atcright'){
		parentobj=document.getElementById('read_tpc');
		if(parentobj){
			parentobj.innerHTML='<div style="float:right">' + unioncode + '</div>' + parentobj.innerHTML;
		}
		return;
	}else if(position=='atcbottom'){
		parentobj=document.getElementById('read_tpc');
		if(parentobj){
			parentobj.innerHTML=parentobj.innerHTML + '<br /><div>' + unioncode + '</div>';
		}
		return;
	}else if(position=='stats'){
		if(parentobj=document.getElementById('stats')){
			var span = document.createElement('span');
			span.innerHTML = unioncode;

			var regExp=/<script.*>(.*)<\/script>/gi;
			if(regExp.test(span.innerHTML)){
				eval(RegExp.$1);
			} 
			parentobj.appendChild(span);
		}else if(parentobj=document.getElementById('footer')){
			var span = document.createElement('span');
			span.innerHTML = unioncode;
			parentobj.appendChild(span);
		}else {
			var span = document.createElement('div');
			span.style.display='none';
			span.innerHTML = unioncode;
			document.body.appendChild(span);
		}
		return;
	}else if(position=='survey'){
		if(v=='6.3.2' || !v){
			parentobj=document.getElementById('h_guide');
			if(parentobj){
				var span = document.createElement('span');
				span.innerHTML = unioncode;
				parentobj.appendChild(span);
			}
		}else{
			parentobj=document.getElementById('guide');
			if(parentobj){
				var li = document.createElement('li');
				li.innerHTML = unioncode;
				parentobj.appendChild(li);
			}
		}
		return;
	}
}