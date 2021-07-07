document.addEventListener('DOMContentLoaded', ()=>{
  if(document.URL.match("/in_takes/new") || document.URL.match("/in_takes.")){

    const inTakesSubmit = document.getElementById("in-takes-submit");
    const foodList = document.getElementsByClassName("food-list");
    
    inTakesSubmit.addEventListener("click",()=>{//id = 1のフードメニューはデータとして送信されない関数
      for(let i = 0; i < foodList.length; i++){
        if(foodList[i].value === "1"){
          foodList[i].disabled = true
        } else{
          foodList[i].disabled = false
        }  
      }
    })
  }
})