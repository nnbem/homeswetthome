function Summernote_go(target,context){
	target.summernote({
        placeholder:'여기에 내용을 적으세요.',
        lang:'ko-KR',
        height:350,
        disableResizeEditor: false,
        callbacks:{
        	 onImageUpload : function(files, editor, welEditable) {
       		   for(var file of files){
                  if(file.name.substring(file.name.lastIndexOf(".")+1).toUpperCase() != "JPG"){
                     alert("JPG 이미지형식만 가능합니다.");
                     return;
                  }
                  if(file.size > 1024*1024*1){
                     alert("이미지는 1MB 미만입니다.");
                     return;
                  }         
               }
       	       for (var file of files) {
                 sendFile(file,this,context);
               }
        	 },
        	 onMediaDelete : function(target) {
        		 let fileName = target[0].src.split("=")[1];
                 //alert(fileName);
        		 deleteFile(fileName,context);
        	 }
        }
	});
}