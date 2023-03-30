const allevnet = document.getElementById("allEvent");
const continueEvent = document.getElementById("continueEvent");
const endEvent = document.getElementById("endEvent");



$('#allEvent').on("click",function(){
    $.ajax({
        url : "/event/allEvent",
        type : "GET",
        success : function(result){
            console.log("전체")
            $("#eventResult").html(result);
        }

    })
})




$('#continueEvent').click(function(){
      $.ajax({
        url : "/event/continueEvent",
        type : "GET",
        success: function(result){
            console.log('진행중')
            $("#eventResult").html(result);
            
        }
    })
})



$('#endEvent').click(function(){
    $.ajax({
      url : "/event/endEvent",
      type : "GET",
      success: function(result){
          console.log('종료')
          $("#eventResult").html(result);
          
      }
  })
})



// $('#continueEvent').click(function(){
//     // let startDate = $('#startDate').attr('data-start-event')
//     // let endDate = $('#endDate').attr('data-end-event')
//     // let date = new Date();

//     // let year = date.getFullYear();
//     // let month = ('0' + (date.getMonth() + 1)).slice(-2);
//     // let day = ('0' + date.getDate()).slice(-2);
//     // let dateStr =  year + '-' + month + '-' + day ;

//     // let date1 = new Date(startDate);
//     // let timestamp1 = date1.getTime();
//     // let intDate1 = Math.floor(timestamp1 / 1000);

//     // let date2 = new Date(endDate);
//     // let timestamp2 = date2.getTime();
//     // let intDate2 = Math.floor(timestamp2 / 1000);

//     // let date3 = new Date(dateStr);
//     // let timestamp3 = date3.getTime();
//     // let intDate3 = Math.floor(timestamp3 / 1000);

//         $.ajax({
//           url : "/event/continueEvent",
//           type : "GET",
//           success: function(data){
                
//             }
//       })
//   })

  
//   $('#endEvent').click(function(){
//     let startDate = $('#startDate').attr('data-start-event')
//     let endDate = $('#endDate').attr('data-end-event')
//     let date = new Date()
  
//         $.ajax({
//           url : "/event/evnetState",
//           type : "GET",
//           success: function(){
//             if (date >= startDate && date <= endDate) {
//                 console.log("The event is in progress.")
//             } else if (date < startDate) {
//                 console.log("The event has not started yet.")
//             } else {
//                 console.log("The event has ended.")
//             }
                    
//             }
//       })
//   })