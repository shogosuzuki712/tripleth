document.addEventListener('DOMContentLoaded', ()=>{
  if(document.URL.match("/in_takes/new")){
    
    const foodCategory = document.getElementsByClassName("food-category-menu"); //フードカテゴリープルダウン(各投稿フォームに1つ)
    const selectFoods = document.getElementsByClassName("select-food"); //フードメニュープルダウン表示(各投稿フォームに11つ)
  
    const pullDown = ()=>{ //選択したフードカテゴリーに応じた、フードメニューのプルダウンが現れる関数
      for(let i = 0; i < foodCategory.length; i++){
        foodCategory[i].addEventListener("change",()=>{

          //_+_+_別のフードカテゴリーを選択しても、前回表示のフードメニューが残らない処理_+_+_//
          //フードメニューのプルダウンボックス数は、11・22・33...と11の倍数で増えてゆく
          //そのため変数 p を 0~10・11~21...と言った範囲を処理できる様に設定(添字のため0スタート)
          for(let p = (11 * i); p < 11 * (i + 1); p++){
            selectFoods[p].style.display = "none";
          }

          // 以下フードカテゴリーとフードメニューのプルダウンを紐付け
          if(foodCategory[i].value == "2"){
              document.getElementsByClassName("main")[i].style.display = "block";
            
          } else if(foodCategory[i].value == "3"){
              document.getElementsByClassName("side")[i].style.display = "block";
            
          } else if(foodCategory[i].value == "4"){
            document.getElementsByClassName("salad")[i].style.display = "block";
          
          } else if(foodCategory[i].value == "5"){
            document.getElementsByClassName("finger-food")[i].style.display = "block";
          
          } else if(foodCategory[i].value == "6"){
            document.getElementsByClassName("soup")[i].style.display = "block";
          
          } else if(foodCategory[i].value == "7"){
            document.getElementsByClassName("drink")[i].style.display = "block";
          
          } else if(foodCategory[i].value == "8"){
            document.getElementsByClassName("fruits")[i].style.display = "block";
          
          } else if(foodCategory[i].value == "9"){
            document.getElementsByClassName("sweets")[i].style.display = "block";
          
          } else if(foodCategory[i].value == "10"){
            document.getElementsByClassName("snack")[i].style.display = "block";
          
          } else if(foodCategory[i].value == "11"){
            document.getElementsByClassName("alcohol")[i].style.display = "block";
          
          } else if(foodCategory[i].value == "12"){
            document.getElementsByClassName("supplement")[i].style.display = "block";
          }
        });
      };
    };

    pullDown();
  

    const addForm = document.getElementById("add-form"); //追加するボタン
    addForm.addEventListener("click", ()=>{ //フォームを追加したタイミングでも読み込みが必要
      pullDown();
    });
  }
});
