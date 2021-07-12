document.addEventListener('DOMContentLoaded', ()=>{
  if(document.URL.match("/in_takes/new") || document.URL.match("/in_takes.")){ //カレンダーにその日の合計calを表示する関数
    const day = document.getElementsByClassName("day");
    for(let i = 0; i < 35; i++ ){ //35はカレンダーの月間表示数
      let dayCalArray = [];
      let daySumCal = 0;
      dayCalArray = day[i].innerText.split(" "); //カレンダーに表示されている文字列(日にち、カロリー)ををそれぞれ配列に入れる
      for(let h = 1; h < dayCalArray.length; h++){
        daySumCal += Number(dayCalArray[h]) //文字列を数値に変換し合計する、ただし配列の先頭は日にちなので合計値に含めない
        day[i].textContent = `${dayCalArray[0]} 合計${daySumCal}kcal` //カレンダーの表示を変更
      };
    };
  

  
  };
});