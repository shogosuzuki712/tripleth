class Snack < ActiveHash::Base
# アタマの数字(10)はフードカテゴリーと対応
  self.data = [
    {id: 101, name: "メニューを選ぶ", cal: ""},
    {id: 102, name: "ポテトチップス", cal: 350},
    {id: 103, name: "じゃがりこ", cal: 310},
    {id: 104, name: "チョコレート", cal: 280},
    {id: 105, name: "バタークッキー", cal: 260},
    {id: 106, name: "ビーフジャーキー", cal: 210},
    {id: 107, name: "するめいか", cal: 250},
  ]
end