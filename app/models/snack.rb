class Snack < ActiveHash::Base
  self.data = [
    {id: 1, name: "メニューを選ぶ", cal: ""},
    {id: 2, name: "ポテトチップス", cal: 350},
    {id: 3, name: "じゃがりこ", cal: 310},
    {id: 4, name: "チョコレート", cal: 280},
    {id: 5, name: "バタークッキー", cal: 260},
    {id: 6, name: "ビーフジャーキー", cal: 210},
    {id: 7, name: "するめいか", cal: 250},
  ]
end