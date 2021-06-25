class FingerFood < ActiveHash::Base
  self.data = [
    {id: 1, name: "メニューを選ぶ", cal: ""},
    {id: 2, name: "フライドポテト", cal: 400},
    {id: 3, name: "たこ焼き", cal: 380},
    {id: 4, name: "イカのあぶり焼き", cal: 330},
    {id: 5, name: "青菜の胡麻和え", cal: 230},
    {id: 6, name: "キムチ", cal: 110},
    {id: 7, name: "冷奴", cal: 150},
    {id: 8, name: "煮豆", cal: 180},
    {id: 9, name: "ひじき", cal: 150},
    {id: 10, name: "もずく", cal: 70},
  ]
end