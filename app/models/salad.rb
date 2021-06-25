class Salad < ActiveHash::Base
  self.data = [
    {id: 1, name: "メニューを選ぶ", cal: ""},
    {id: 2, name: "野菜サラダ(ドレッシングなし)", cal: 80},
    {id: 3, name: "野菜サラダ(ドレッシングあり)", cal: 150},
    {id: 4, name: "ツナ(トッピング)", cal: 65},
    {id: 5, name: "コーン(トッピング)", cal: 30},
    {id: 6, name: "海藻(トッピング)", cal: 20},
    {id: 7, name: "シーザーサラダ", cal: 350},
    {id: 8, name: "チョレギサラダ", cal: 300},
    {id: 9, name: "冷やしトマト", cal: 80},
    {id: 10, name: "ポテトサラダ", cal: 210}
  ]
end