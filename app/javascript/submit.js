document.addEventListener('DOMContentLoaded', ()=>{
  if(document.URL.match("/in_takes/new") || document.URL.match("/in_takes.")){

    const inTakesSubmit = document.getElementById("in-takes-submit");
    const foodList = document.getElementsByClassName("food-list");
    
    inTakesSubmit.addEventListener("click",()=>{//id = 1のフードメニューはデータとして送信されない関数
      for(let i = 0; i < foodList.length; i++){
        if(foodList[i].value === "11" ||
            foodList[i].value === "21" ||
            foodList[i].value === "31" ||
            foodList[i].value === "41" ||
            foodList[i].value === "51" ||
            foodList[i].value === "61" ||
            foodList[i].value === "71" ||
            foodList[i].value === "81" ||
            foodList[i].value === "91" ||
            foodList[i].value === "101" ||
            foodList[i].value === "111" ||
            foodList[i].value === "121"){
              
          foodList[i].disabled = true;
        } else{
          foodList[i].disabled = false;
        };
      };
    });
  };
});