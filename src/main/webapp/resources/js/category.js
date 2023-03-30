const btn =document.getElementById("btn");
const btn1 =document.getElementById("btn1");
let count =0;

btn.addEventListener("click",function(){
    
    if(count==1){
        alert("카테고리는 최대 3개까지만 가능합니다");
        return;
    }

    let ar ='<div><select class="form-select" name="categoryNum">'
            +'<option value="2">전체</option>'  
            +'<option value="3" >책</option>'
			+'<option value="4">강의</option>'
           
			
			
            +'</select><button type="button" class="btn btn-outline-danger del">카테고리 삭제</button></div>'
    
    
    
    
    $("#btn").before(ar);

    

    count++;
    
})
$("#catdiv").on("click",".del",function(e){
    if(count==0){
        alert("카테고리는 최소 하나이상 포함되어야 합니다");
    }else{
    $(this).parent().remove();
    count--;
}
})