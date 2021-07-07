document.addEventListener('DOMContentLoaded', ()=>{
  if(document.URL.match("/in_takes/new") || document.URL.match("/in_takes.")){

    const totalCal = function(){ //カロリーの合計値が表示される関数
      const foodList = document.getElementsByClassName("food-list"); //フードメニュープルダウン(各投稿フォームに11つ)
      const foodListCal = document.getElementsByClassName("food-list-cal"); //カロリープルダウン(各投稿フォームに11つ)

      for(let i=foodList.length - 11; i<foodList.length; i++){
        foodList[i].addEventListener("change",()=>{

          const calId = foodListCal[i].value; //選択されたフードメニューの、カロリーのid
          const cal = foodListCal[i][calId - 1].text; //カロリーをテキストとして取得

          // 選択した投稿フォームを区別し、カロリーを数値として代入
          // この処理によって同じ投稿フォーム内でカロリーの値が変わっても、上書きされる
          // Math.floor(i / 11)は、i が 11以下の場合は0、11以上22以下の場合は1...といった計算式
          array[Math.floor(i / 11)] = Number(cal);

          const sumCal = document.getElementById("sum-cal"); //カロリーの合計を表示する場所
          const inTakes = array.reduce(function(a,b){ //配列内のカロリーを全て合計
            return a + b;
          });
          
          sumCal.textContent = `${inTakes}`; //カロリー合計値の表示
        });
      };
    };

    const minusCal = function(){ //別のカテゴリーを選択した場合、前回加算分のカロリーがマイナスされる関数
      const foodCategory = document.getElementsByClassName("food-category-menu"); //フードカテゴリープルダウン(各投稿フォームに1つ)
      for(let c = (foodCategory.length - 1); c < foodCategory.length; c++){
        foodCategory[c].addEventListener("change", ()=>{
          array[c] = 0;

          const sumCal = document.getElementById("sum-cal");
          const inTakes = array.reduce(function(a,b){
            return a + b;
          });
          sumCal.textContent = `${inTakes}`;
        });
      };
    };

    const array = []; //空の配列に各投稿フォームのカロリーを格納し合計する
    totalCal();
    minusCal();
    
    const addForm = document.getElementById("add-form"); //追加するボタン
    addForm.addEventListener("click", ()=>{ //フォームを追加したタイミングでも読み込みが必要
      totalCal();
      minusCal();
    });
  };
});