const fileList = document.getElementById("fileList");

let count=0;
let max=1;
let param='pic';
let idx=0;

function setCount(c){
    count=c;
}

function setParam(p){
    param=p;
}

function setMax(m){
    max=m;
}

$(".deleteCheck").click(function(){

    let result=confirm('파일이 영구 삭제 됩니다');
    let fileNum = $(this).val();
    let ch = $(this);

    if(result){

        $.ajax({
            type:'POST',
            url:'/product/productDelete',
            data:{
                fileNum: fileNum
            },
            success:function(){
                alert("삭제 되었습니다");
                ch.parent().parent().remove();
                count = 0;
            },
            error:function(){
                alert("삭제 실패 관리자에게 문의 하세요");
            }
        })
    }else {
        $(this).prop('checked', false);
    }
})

$("#fileList").on("click", ".dels", function(e){
    $(this).parent().remove();
    count--;
})

$("#fileAdd").on("click", () => {

    if(count>=max){
        alert('첨부파일은 최대 '+max+ ' 까지만 가능');
        return;
    }

    count++;
    let child = '<div class="input-group mb-3 my-3" id="f'+idx+'">';
        child = child+ '<input type="file" class="form-control" name="'+param+'">'
        child = child+ '<button type="button" class="btn btn-outline-danger dels" data-dels-id="f'+idx+'">X</button>'
        child = child+ '</div>'
    $("#fileList").append(child);

    idx++;   
    
});   