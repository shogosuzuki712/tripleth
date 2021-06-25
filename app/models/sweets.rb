class Sweets < ActiveHash::Base
  self.data = [
    {id: 1, name: "メニューを選ぶ", cal: ""},
    {id: 2, name: "ケーキ", cal: 380},
    {id: 3, name: "プリン", cal: 190},
    {id: 4, name: "シュークリーム", cal: 220},
    {id: 5, name: "バームクーヘン", cal: 380},
    {id: 6, name: "どら焼き", cal: 300},
    {id: 7, name: "みたらし団子(1本)", cal: 150},
    {id: 8, name: "羊羹", cal: 100},
    {id: 9, name: "ヨーグルト", cal: 90},
  ]
end