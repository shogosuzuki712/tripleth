class Side < ActiveHash::Base
# アタマの数字(3)はフードカテゴリーと対応
  self.data = [
    {id: 31, name: "メニューを選ぶ", cal:""},
    {id: 32, name: "ステーキ", cal:"1000"},
    {id: 33, name: "肉じゃが", cal:"400"},
    {id: 34, name: "ハンバーグ", cal:"780"},
    {id: 35, name: "とんかつ", cal:"890"},
    {id: 36, name: "豚の生姜焼き", cal:"450"},
    {id: 37, name: "レバニラ", cal:"420"},
    {id: 38, name: "鳥の唐揚げ", cal:"600"},
    {id: 39, name: "焼き鳥", cal:"480"},
    {id: 310, name: "焼き魚", cal:"390"},
    {id: 311, name: "お刺身", cal:"370"},
    {id: 312, name: "玉子焼き", cal:"300"}
  ]
end