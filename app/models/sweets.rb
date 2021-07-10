class Sweets < ActiveHash::Base
# アタマの数字(9)はフードカテゴリーと対応
  self.data = [
    {id: 91, name: "メニューを選ぶ", cal: ""},
    {id: 92, name: "ケーキ", cal: 380},
    {id: 93, name: "プリン", cal: 190},
    {id: 94, name: "シュークリーム", cal: 220},
    {id: 95, name: "バームクーヘン", cal: 380},
    {id: 96, name: "どら焼き", cal: 300},
    {id: 97, name: "みたらし団子(1本)", cal: 150},
    {id: 98, name: "羊羹", cal: 100},
    {id: 99, name: "ヨーグルト", cal: 90},
  ]
end