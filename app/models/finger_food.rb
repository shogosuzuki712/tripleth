class FingerFood < ActiveHash::Base
# アタマの数字(5)はフードカテゴリーと対応
  self.data = [
    {id: 51, name: "メニューを選ぶ", cal: ""},
    {id: 52, name: "フライドポテト", cal: 400},
    {id: 53, name: "たこ焼き", cal: 380},
    {id: 54, name: "イカのあぶり焼き", cal: 330},
    {id: 55, name: "青菜の胡麻和え", cal: 230},
    {id: 56, name: "キムチ", cal: 110},
    {id: 57, name: "冷奴", cal: 150},
    {id: 58, name: "煮豆", cal: 180},
    {id: 59, name: "ひじき", cal: 150},
    {id: 510, name: "もずく", cal: 70},
  ]
end