document.addEventListener('DOMContentLoaded', ()=>{
  if(document.URL.match("/in_takes/new") || document.URL.match("/in_takes.")){

    const cal = function(){ //選択したフードメニューに応じたカロリーが表示される関数
      const foodListCal = document.getElementsByClassName("food-list-cal"); //カロリープルダウン(各投稿フォームに11つ)
      const foodList = document.getElementsByClassName("food-list"); //フードメニュープルダウン(各投稿フォームに11つ)
      const InTakesForm = document.getElementsByClassName("in-takes-form"); //投稿フォーム

      for(let c = (InTakesForm.length - 1); c < InTakesForm.length; c++){ //表示されている登録フォームによって変化
        for(let i = 11 * c; i < foodList.length; i++){ //その投稿フォーム内のフードメニュー選択
          foodList[i].addEventListener("change", ()=>{

          const id = foodList[i].value; // 選択されているフードメニューのid
          foodListCal[i].value = id; //カロリープルダウンのidに代入
          
          const cal = foodListCal[i][id - 1].text; //カロリーをテキストとして取得
          const mainCalHtml = `
            <div class="announced-cal">
              カロリーは${cal}kcalです
            </div>`;
          const addCal = document.getElementsByClassName("add-cal"); //HTMLを挿入する箇所(各投稿フォームに1つ)

          //--- 前回表示されたカロリーが残っている場合は削除 ---//
          if(addCal[c].outerText){
            addCal[c].removeChild(addCal[c].firstElementChild);
          }

          // カロリー表示
          addCal[c].insertAdjacentHTML("afterbegin", mainCalHtml);
          });
        };
      };
    };

    const deleteCal = function(){ //別のフードカテゴリーを選択した場合、前回表示のカロリーが消える関数
    
      const foodCategory = document.getElementsByClassName("food-category-menu"); //フードカテゴリープルダウン(各投稿フォームに1つ)
      const addCal = document.getElementsByClassName("add-cal"); //HTMLを挿入する箇所(各投稿フォームに1つ)

      for(let d = (foodCategory.length - 1); d < foodCategory.length; d++){
        foodCategory[d].addEventListener("change", ()=>{
          if(addCal[d].outerText){
            addCal[d].removeChild(addCal[d].firstElementChild);
          };
        });
      };
    };


    cal();
    deleteCal();
  
    const addForm = document.getElementById("add-form"); //追加するボタン
    addForm.addEventListener("click", ()=>{ //フォームを追加したタイミングでも読み込みが必要
      cal();
      deleteCal();
    });
  };
});