
//사진 썸네일 : contextPath -> context path parameter
function PictureThumb(contextPath){
	let elements = document.querySelectorAll('.person-info');
	for(let element of elements){
		let id = element.getAttribute("data-id");		
	
		element.style.cssText="display:block;" 
					   +"width:40px; height:40px;"
					   +"margin:0 auto; border-radius:20px;"
					   +"background-image:url('"+contextPath+"/member/getPicture?id="+id+"');"
					   +"background-position:center;"
					   +"background-size:cover;"
					   +"background-repeat:no-repeat;";		
	
	}
}

//사진 백그라운사진 : contextPath -> context path parameter
function PictureBackground(contextPath){
	let elements = document.querySelectorAll('.person-info');
	for(let element of elements){
		let id = element.getAttribute("data-id");		
	
		element.style.backgroundImage ="url('"+contextPath+"/member/getPicture?id="+id+"')";
		element.style.backgroundPosition="center";
		element.style.backgroundRepeat="no-repeat";
		element.style.backgroundSize="cover";
	}
}
