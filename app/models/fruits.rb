class Fruits < ActiveHash::Base
  self.data = [
    {id: 1, name: "メニューを選ぶ", cal: ""},
    {id: 2, name: "りんご", cal: 120},
    {id: 3, name: "ぶどう", cal: 130},
    {id: 4, name: "みかん", cal: 100},
    {id: 5, name: "いちご", cal: 150},
    {id: 6, name: "バナナ", cal: 160},
    {id: 7, name: "フルーツミックス", cal: 250},
  ]
end