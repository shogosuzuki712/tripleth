class Fruits < ActiveHash::Base
# アタマの数字(8)はフードカテゴリーと対応
  self.data = [
    {id: 81, name: "メニューを選ぶ", cal: ""},
    {id: 82, name: "りんご", cal: 120},
    {id: 83, name: "ぶどう", cal: 130},
    {id: 84, name: "みかん", cal: 100},
    {id: 85, name: "いちご", cal: 150},
    {id: 86, name: "バナナ", cal: 160},
    {id: 87, name: "フルーツミックス", cal: 250},
  ]
end