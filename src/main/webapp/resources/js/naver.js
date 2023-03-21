// ------------------------ 네이버 데이터 넣기
$('#getNaverDataBtn').click(()=>{
    let searchList = ['여성패션','남성패션','가구/인테리어','생활/주방','가전제품','전자기기(디지털,컴퓨터)','E쿠폰/티켓']
    
    for(let search of searchList){
        $.ajax({
            type:"GET",
            url:"/product/getNaverData?search=" + search,
            success:(response)=>{
                response = JSON.parse(response);
                $(response.items).each((index,item)=>{
                    item.title = item.title.replace(/<[^>]*>?/g, '');
                    $.ajax({
                        async:false,
                        url:"/product/insertNaverData",
                        type:'post',
                        data:{
                            'memberId':'admin',
                            'productTitle':item.title,
                            'productPrice':item.lprice,
                            'productDetail':item.title + " 상품 입니다 많은 구매 바랍니다",
                            'productCategory':search,
                            'productImgName':item.image
                        },
                        success:(response)=>{
                            console.log(response);
                        }
                    })
                })

            }
        })
    }

})