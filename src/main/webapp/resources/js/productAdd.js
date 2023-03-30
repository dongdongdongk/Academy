
//SELECTOR
const title = document.getElementById("title");
const titleResult = document.getElementById("titleResult");

// const pw = document.getElementById("pw");
// const pwResult = document.getElementById("pwResult");

// const pwCheck = document.getElementById("pwCheck");
// const pwCheckResult = document.getElementById("pwCheckResult");

// const frm = document.getElementById("frm");
// const btn = document.getElementById("btn");

// const email = document.getElementById("email");
// const emaildomain = document.getElementById("emaildomain");
// const emailResult = document.getElementById("emailResult");

// let idCheck=false;
// let pwLengthCheck=false;
// let pwNullCheck=false;
// let pwEqualCheck=false;
let checks = [false, false, false, false]


// ID 검증
title.addEventListener("blur", function(){
    //중복검사
    let xhttp = new XMLHttpRequest();

    //url, method
    xhttp.open("POST", "./productIdCheck");

    //header
    xhttp.setRequestHeader("Content-type", "application/x-www-form-urlencoded");

    //요청 발생 POST일 경우 parameter 전송
    xhttp.send("title="+title.value);

    //응답 처리
    xhttp.addEventListener("readystatechange", function(){
        if(this.readyState==4 && this.status==200){
            if(this.responseText.trim()=='true'){
                checks[0]=true;
                titleResult.innerHTML="사용가능한 ID";
                titleResult.classList.add("blueResult");
                titleResult.classList.remove("redResult");
            }else {
                checks[0]=false;
                titleResult.innerHTML="중복된 ID";
                titleResult.classList.add("redResult");
                titleResult.classList.remove("blueResult");
            }
        }
        // if(this.readyState==4 && this.status !=200){

        // }

    });
});

// //PW 검증
// pw.addEventListener("keyup", function(){
//     if(pw.value.length>5 && pw.value.length<13){
//         pwResult.innerHTML='정상 비번'
//         //pwLengthCheck=true;
//         checks[1]=true;
//     }else {
//         pwResult.innerHTML='비번은 6글자 이상 12자 이하여야 합니다'
//         checks[1]=false;
//     }
// })

// pw.addEventListener("blur", function(){
//     if(pw.value!=''){
//         //pwNullCheck=true;
//         checks[2]=true;
//     }else {
//         pwResult.innerHTML='PW는 필수 입니다'
//         checks[2]=false;
//     }
// })

// pw.addEventListener("change", function(){
//     checks[3]=false;
//     pwCheck.value='';
//     pwCheckResult.innerHTML='PW가 틀립니다';
// })

// //pw Equal 검증
// pwCheck.addEventListener("blur", function(){
//     if(pwCheck.value == pw.value){
//         pwCheckResult.innerHTML="동일한 PW"
//         //pwEqualCheck=true;
//         checks[3]=true;
//     }else {
//         pwCheckResult.innerHTML="PW가 틀립니다"
//         checks[3]=false;
//     }
// });


// // Email 검증
// function validateEmail() {
//     // 중복 검사
//     let xhttp = new XMLHttpRequest();

//     // URL, method 설정
//     xhttp.open("POST", "./memberEmailCheck");

//     // 헤더 설정
//     xhttp.setRequestHeader("Content-type", "application/x-www-form-urlencoded");

//     // 요청 발생 POST일 경우 파라미터 전송
//     xhttp.send("email=" + email.value + "&emaildomain=" + emaildomain.value);

// 	// 응답 처리
// 	xhttp.addEventListener("readystatechange", function () {
// 	    if (this.readyState == 4 && this.status == 200) {
// 	        const mailCheckBtn = document.getElementById("mail-Check-Btn");
// 	        if (this.responseText.trim() == "true") {
// 	            checks[1] = true;
// 	            emailResult.innerHTML = "사용 가능한 이메일";
// 	            emailResult.classList.add("blueResult");
// 	            emailResult.classList.remove("redResult");
// 	            mailCheckBtn.disabled = false;
// 	        } else {
// 	            checks[1] = false;
// 	            emailResult.innerHTML = "이미 등록된 이메일";
// 	            emailResult.classList.add("redResult");
// 	            emailResult.classList.remove("blueResult");
// 	            mailCheckBtn.disabled = true;
// 	        }
// 	    }
// 	});
// }

// email.addEventListener("blur", validateEmail);
// emaildomain.addEventListener("change", validateEmail);

// // email 발송 버튼 클릭 시
// $('#mail-Check-Btn').click(function() {
//     const email = $('#email').val() + $('#emaildomain').val();
//     const checkInput = $('.mail-check-input');

// 	$.ajax({
// 	    type : 'get',
// 	    url : '/mailCheck?email=' + email,
// 	    success : function (data) {
// 	        console.log("data : " +  data);
// 	        checkInput.prop('disabled', false);
// 	        code = data;
// 	        alert('인증번호가 전송되었습니다.');
// 	        $('#mail-Check-Btn').addClass('d-none'); // 발송 버튼 숨기기
// 	        $('#mail-Confirm-Btn').removeClass('d-none'); // 확인 버튼 보이기
// 	    }           
// 	}); // end ajax
// }); // end send email

// // 인증번호 확인 버튼 클릭 시
// $('#mail-Confirm-Btn').click(function() {
// 	const inputCode = $('.mail-check-input').val();
// 	const $resultMsg = $('#mail-check-warn');
		
// 	if (inputCode === code) {
// 	    $resultMsg.html('인증번호가 일치합니다.');
// 	    $resultMsg.css('color', 'green');
// 	    $('.mail-check-input').prop('disabled', true);
// 	    $('#email, #emaildomain').prop('readonly', true);
// 	    $('#mail-Check-Btn, #mail-Confirm-Btn').prop('disabled', true); // 버튼 모두 비활성화
// 	} else {
// 	    $resultMsg.html('인증번호가 불일치 합니다. 다시 확인해주세요!.');
// 	    $resultMsg.css('color', 'red');
// 	}
// });

// //form 전송
// btn.addEventListener("click", function(){
//     //if(idCheck && pwLengthCheck && pwNullCheck && pwEqualCheck){
//     if(!checks.includes(false)){
//         alert('회원가입 성공');
//         frm.submit();
//     }else {
//         alert("필수 사항을 입력하세요");
//     }
// })
