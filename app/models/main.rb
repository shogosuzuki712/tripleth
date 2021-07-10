class Main < ActiveHash::Base
# アタマの数字(2)はフードカテゴリーと対応
  self.data = [
    {id: 21, name: "メニューを選ぶ", cal: ""},
    {id: 22, name: "ごはん・おにぎり", cal: 120},
    {id: 23, name: "食パン(1枚)", cal: 130},
    {id: 24, name: "菓子パン", cal: 360},
    {id: 25, name: "うどん", cal: 180},
    {id: 26, name: "蕎麦", cal: 160},
    {id: 27, name: "カップラーメン", cal: 380},
    {id: 28, name: "パスタ", cal: 600},
    {id: 29, name: "カレー", cal: 540},
    {id: 210, name: "牛丼", cal: 780},
    {id: 211, name: "ピザ", cal: 1020},
    {id: 212, name: "ハンバーガー", cal: 310}
  ]
end